#!/usr/bin/env perl -w

my $age = 14;
my $refAge = \$age;

my $refJikken1 = $refAge;
# ↓値は前回の実行結果より
# 本より値が長めなのは32/64bitの差だろう
my $refJikken2 = "SCALAR(0x7fdc8e803f90)";

print "refJikken1: $refJikken1 -> $$refJikken1 \n";
print "refJikken2: $refJikken2 -> $$refJikken2 \n"; # Broken!!

# 実行結果
# refJikken1: SCALAR(0x7fad6b030290) -> 14 
# Use of uninitialized value in concatenation (.) or string at chapter02/scalarRefV4.pl line 10.
# refJikken2: SCALAR(0x7fdc8e803f90) ->  
