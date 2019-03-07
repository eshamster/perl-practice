#!/usr/bin/env perl -w

use strict;
use Triangle;

my $a = 3;
my $b = 4;
my $c = 5;

my $space = &Triangle::space($a, $b, $c);

print "$space\n";
