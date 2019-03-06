#!/usr/bin/env perl -w

use strict;

my $a = 3;
my $b = 4;
my $c = 5;

my $space = &space($a, $b, $c);

print "$space\n";

sub space {
    my ($a, $b, $c) = @_;
    my $s = ($a + $b + $c) / 2;
    sqrt($s * ($s - $a) * ($s - $b) * ($s - $c));
}
