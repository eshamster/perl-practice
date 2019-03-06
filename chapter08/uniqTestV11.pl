#!/usr/bin/env perl -w

use strict;

my %uniq = ();

use ArrUtil;

print "ArrUtil $ArrUtil::VERSION required!\n";

my @in = (5, 7, 3, 7, 3, 2, 5);

for my $in (&uniq(@in)) {
    if (&main_uniq($in)) {
        print "$in is unique!\n";
    } else {
        print "$in is not unique!\n";
    }
}

sub main_uniq {
    my $in = shift;

    if (not $uniq{$in}) {
        $uniq{$in} = 1;
        1;
    } else {
        0;
    }
}

=pod
実行結果:

$ ./uniqTestV11.pl 
ArrUtil 1.0 required!
5 is unique!
3 is unique!
7 is unique!
2 is unique!
=cut
