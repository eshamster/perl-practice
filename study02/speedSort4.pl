#!/usr/bin/env perl -w

# 無名配列を利用して簡略化

my @input = <>;
my @length = ();

for (@input) {
    push @length, [$_, length($_)];
}

my @length2 = sort {$b->[1] <=> $a->[1]} @length;

for (@length2) {
    print $_->[0];
}
