#!/usr/bin/env perl -w

use File::Find;

find(\&fileProc, '.');

sub fileProc {
    my $fname = $_;

    return unless -f $fname;
    return unless /\.sample$/;

    open IN, $fname;
    open TMP, ">$fname.temptemp";

    while (<IN>) {
        s|/(.*)/sh|/$1/bash|g; # ← $_を暗黙に参照して、さらに書き換えている
        print TMP; # ← 書き換えられた$_を暗黙に参照。こわい
    }

    close IN;
    close TMP;

    # .git/hooks/*.sampleを書き換える…のは気が引けるので、
    # 取り敢えず適当なファイル名にrenameしてみる
    rename "$fname.temptemp", "$fname.temp"
        or warn "cannot rename $fname because $! _n";

    # Note:
    # > perldoc perlvar | grep "\$\!"
    #     ......
    #     $!      When referenced, $! retrieves the current value of the C "errno"
    #     ......
}
