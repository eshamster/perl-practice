#!/usr/bin/env perl -w

use strict 'refs';

my $age = 14;
my $refAge = \$age;

my $refJikken1 = $refAge;
my $refJikken2 = "SCALAR(0x7fdc8e803f90)";

my $refJikken1What = ref $refJikken1;
my $refJikken2What = ref $refJikken2;

print "refJikken1: $refJikken1 -> $$refJikken1 :ref = $refJikken1What \n";
print "refJikken2: $refJikken2 -> $$refJikken2 :ref = $refJikken2What \n"; # Broken!!

# 実行結果
# $ chapter02/scalarRefV6.pl 
# refJikken1: SCALAR(0x7fa89502f2d8) -> 14 :ref = SCALAR 
# Can't use string ("SCALAR(0x7fdc8e803f90)") as a SCALAR ref while "strict refs" in use at chapter02/scalarRefV6.pl line 15.
#
# $ echo $?
# 255
