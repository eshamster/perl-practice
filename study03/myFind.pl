#!/usr/bin/env perl -w

use strict;

my $startDir = (shift or ".");
&MyFind::find(\&foundProc, $startDir);

sub foundProc {
    my $baseName = $_;

    print "\$_ ==> $baseName \n";
    print "\$MyFind::name ==> $MyFind::name \n";

    if (-f $baseName) {
        print "category: file \n";
    } else {
        print "category: directory \n";
    }

    my $size = -s $baseName;
    print "size ==> $size \n\n";
}


package MyFind;

sub find {
    my ($proc, $dir) = @_;
    chdir $dir;
    our $cwd;

    unless (defined $cwd) {
        $cwd = $dir;
    } else {
        $cwd .= ('/' . $dir); # 右辺のカッコはなくても良い
    }

    opendir my $dh, '.';

    for my $cur (readdir($dh)) {
        next if $cur eq '.' or $cur eq '..';
        # ※ここでmainモジュールを指定する気持ち悪さは次の版で解消
        $main::_ = $cur;
        our $name = $cwd . '/' . $cur;
        &$proc;

        if (-d $cur) {
            &find($proc, $cur);
            chdir '..';
            $cwd =~ s|/[^_/]*$||;
        }
    }

    closedir $dh;
}
