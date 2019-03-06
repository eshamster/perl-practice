#!/usr/bin/env perl -w

use strict 'vars';

%uniq = ();

require "arrUtilV5.pl";

@in = (5, 7, 3, 7, 3, 2, 5);

for $in (@in) {
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

$ ./uniqTestV5.pl 
Variable "%uniq" is not imported at ./uniqTestV5.pl line 22.
Variable "%uniq" is not imported at ./uniqTestV5.pl line 23.
Global symbol "%uniq" requires explicit package name at ./uniqTestV5.pl line 5.
Global symbol "@in" requires explicit package name at ./uniqTestV5.pl line 9.
Global symbol "$in" requires explicit package name at ./uniqTestV5.pl line 11.
Global symbol "@in" requires explicit package name at ./uniqTestV5.pl line 11.
Global symbol "$in" requires explicit package name at ./uniqTestV5.pl line 12.
Global symbol "$in" requires explicit package name at ./uniqTestV5.pl line 13.
Global symbol "$in" requires explicit package name at ./uniqTestV5.pl line 15.
Global symbol "%uniq" requires explicit package name at ./uniqTestV5.pl line 22.
Global symbol "%uniq" requires explicit package name at ./uniqTestV5.pl line 23.
Execution of ./uniqTestV5.pl aborted due to compilation errors.
=cut
