#!/usr/bin/env perl -w

my $age = 14;
my $refAge = \$age;

my $refJikken1 = $refAge;
my $refJikken2 = "SCALAR(0x7fdc8e803f90)";

my $refJikken1What = ref $refJikken1;
my $refJikken2What = ref $refJikken2;

print "refJikken1: $refJikken1 -> $$refJikken1 :ref = $refJikken1What \n";
print "refJikken2: $refJikken2 -> $$refJikken2 :ref = $refJikken2What \n"; # Broken!!
