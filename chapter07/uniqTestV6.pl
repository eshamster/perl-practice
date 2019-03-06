#!/usr/bin/env perl -w

use strict 'vars';

my %uniq = ();

require "arrUtilV5.pl";

my @in = (5, 7, 3, 7, 3, 2, 5);

for my $in (@in) {
    if (&uniq($in)) {
        print "$in is unique!\n";
    } else {
        print "$in is not unique!\n";
    }
}

sub uniq {
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

$ ./uniqTestV6.pl 
5 is unique!
7 is unique!
3 is unique!
7 is not unique!
3 is not unique!
2 is unique!
5 is not unique!
=cut
