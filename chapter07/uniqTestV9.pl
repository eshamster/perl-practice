#!/usr/bin/env perl -w

use strict;

my %uniq = ();

require "arrUtilV6.pl";

print "arrUtil $arrUtil::version required!\n";

my @in = (5, 7, 3, 7, 3, 2, 5);

for my $in (&arrUtil::uniq(@in)) {
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
※下記Warningについては本にも記載あり (解消はこの先の話になる) ← V7に同じ

$ ./uniqTestV9.pl 
Name "arrUtil::version" used only once: possible typo at ./uniqTestV8.pl line 9.
arrUtil 6.0 required!
7 is unique!
5 is unique!
3 is unique!
2 is unique!
=cut
