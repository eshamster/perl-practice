#!/usr/bin/env perl -w

use File::Find;

find(\&fileProc, '.');

sub fileProc {
    print "$File::Find::name\n";
}
