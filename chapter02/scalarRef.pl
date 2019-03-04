#!/usr/bin/env perl -w

my $age = 14;
my $refAge = \$age;
my $derefAge = $$refAge;

++$$refAge;

print "age is $age, refAge is $refAge, and derefAge is $derefAge\n"
