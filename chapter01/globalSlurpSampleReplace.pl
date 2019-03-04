#!/usr/bin/env perl -w

use File::Find;

find(\&fileProc, '.');

sub fileProc {
    my $fname = $_;

    return unless -f $fname;
    return unless /\.sample$/;

    open IN, $fname;
    undef $/;
    $_ = <IN>;
    close IN;

    # 改行前の"＼"なしに改行後に"]"を置いても動作しないので、
    # "/s" ("|s") を利用する例にはならず…
    1 while s|while test (.*)\n\s*\bdo\b|while [ $1 ]; do|g;

    open TMP, ">$fname.temptemp";
    print TMP;
    close TMP;

    # .git/hooks/*.sampleを書き換える…のは気が引けるので、
    # 取り敢えず適当なファイル名にrenameしてみる
    rename "$fname.temptemp", "$fname.temp"
        or warn "cannot rename $fname because $! _n";
}
