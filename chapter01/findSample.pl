#!/usr/bin/env perl -w

use File::Find;

find(\&fileProc, '.');

sub fileProc {
    return unless -f $_;
    return unless /\.sample$/;
    print "$File::Find::name\n";
}
