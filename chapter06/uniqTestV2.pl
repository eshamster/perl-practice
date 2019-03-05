#!/usr/bin/env perl -w

my @in = (5, 7, 3, 7, 3, 2, 5);
print "$_ " for &uniq(@in);
print "\n";


sub uniq {
    my %out = map {$_, 1} @_;
    keys %out;
}
