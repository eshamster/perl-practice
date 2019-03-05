#!/usr/bin/env perl -w

my $refMonth = {
    January    => 1,
    February   => 2,
    March      => 3,
    April      => 4,
    May        => 5,
    June       => 6,
    July       => 7,
    August     => 8,
    September  => 9,
    October    => 10,
    November   => 11,
    December   => 12,
};

print "ref to month hash: $refMonth \n";

my @sortedKey = sort keys %$refMonth;
print "sorted key: @sortedKey \n";

print "January is Month No. $$refMonth{January} \n";
print "February is Month No. $refMonth->{February} \n";
