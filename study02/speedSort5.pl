#!/usr/bin/env perl -w

# mapを利用して簡略化

print map $_->[0],
    sort { $b->[1] <=> $a->[1] }
    map [$_, length($_)], <>
