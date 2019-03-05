#!/usr/bin/env perl -w

# ひとまず正しい結果が出るようになった

my @input = <>;
my @length = ();

for (@input) {
    my @lengthIndex = ();
    $lengthIndex[0] = $_;
    $lengthIndex[1] = length $_;
    push @length, \@lengthIndex;
}

my @length2 = sort {$b->[1] <=> $a->[1]} @length;

for (@length2) {
    print $_->[0];
}
