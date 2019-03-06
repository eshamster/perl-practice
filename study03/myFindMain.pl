#!/usr/bin/env perl -w

use strict;
use MyFind;

my $startDir = (shift or ".");
find(\&foundProc, $startDir);

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
