#!/usr/bin/env perl -w

my @month = ('January', 'February', 'March', 'April', 'May', 'June',
             'July', 'August', 'September', 'October', 'Novenmber', 'December');

my $refMonth = \@month;

print "refMonth: $refMonth -> @$refMonth \n";
