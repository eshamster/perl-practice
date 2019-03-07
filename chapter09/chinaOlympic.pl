#!/usr/bin/env perl -w

use strict;
use Calendar::Any;

# 本のV3版

my $today = Calendar::Any->today->to_Gregorian;
my $olydate = Calendar::Any->new_from_Gregorian(8, 8, 2008);
my $diff = $olydate - $today;

print "Today is $today\n";
print "Beijing Olympic will be started at $olydate\n";
print "There is $diff days until Beijing Olympic !!!\n";
