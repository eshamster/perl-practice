#!/usr/bin/env perl -w

# せっかくなので汎用化

my @input = <>;

# Note: built-inな関数のリファレンスを直接取り出す方法はなさそう
print &speedSort(sub { length(shift) }, \@input);

sub speedSort {
    my ($func, $targetArray) = @_;

    map $_->[0],
        sort { $b->[1] <=> $a->[1] }
        map [$_, &$func($_)], @$targetArray
}
