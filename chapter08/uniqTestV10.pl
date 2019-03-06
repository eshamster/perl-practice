#!/usr/bin/env perl -w

use strict;

my %uniq = ();

use ArrUtil;

print "ArrUtil $ArrUtil::VERSION required!\n";

my @in = (5, 7, 3, 7, 3, 2, 5);

for my $in (&ArrUtil::uniq(@in)) {
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
※下記名前衝突Warningについては本にも記載あり、次のV11で解消

$ ./uniqTestV10.pl 
Subroutine uniq redefined at ./uniqTestV10.pl line 21.
ArrUtil 1.0 required!
7 is unique!
3 is unique!
5 is unique!
2 is unique!
=cut
