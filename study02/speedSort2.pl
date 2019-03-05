#!/usr/bin/env perl -w

# ※正しくない!

my @input = <>;
my @length = ();

for (@input) {
    my @lengthIndex = ();
    $lengthIndex[0] = $_;
    $lengthIndex[1] = length $_;
    push @length, \@lengthIndex;
}

print sort {$b->[1] <=> $a->[1]} @length;
