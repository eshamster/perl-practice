#!/usr/bin/env perl -w

use strict;

my %uniq = ();

use ArrUtil;

print "ArrUtil $VERSION required!\n";

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
※未exportの変数"VERSION"を非FQNで利用しようとしているので、意図通りのエラー

$ ./uniqTestV12.pl 
Global symbol "$VERSION" requires explicit package name at ./uniqTestV12.pl line 9.
Execution of ./uniqTestV12.pl aborted due to compilation errors.
=cut
