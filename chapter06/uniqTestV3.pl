#!/usr/bin/env perl -w

require "arrUtil.pl";

my @in = (5, 7, 3, 7, 3, 2, 5);
print "$_ " for &uniq(@in);
print "\n";

