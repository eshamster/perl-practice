#!/usr/bin/env perl -w

# ※正しくない!

my @input = <>;
my @length = ();

for (@input) {
    push @length, length($_);
}

print sort {$b <=> $a} @length;
