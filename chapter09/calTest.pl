#!/usr/bin/env perl -w

use strict;
use Calendar::Any;

my $date = Calendar::Any->new_from_Gregorian(12, 16, 2006);
print $date->date_string("Gregorian date: %M %W %d %Y"), "\n";

my $newdate = $date + 7;
print $newdate->date_string("Gregorian date of next week: %D %Y"), "\n";

my $olddate = $date - 7;
print $olddate->date_string("Absolute date of last week: %A\n");

my $diff = $date - $olddate;
printf "There is %d days between %s and %s\n",
    $diff, $date->date_string("%D"), $olddate->date_string("%D");

# ※非互換: convert_to_Julian -> to_Julian
$date->to_Julian;
print $date->date_string("Julian date: %M %W %d %Y"), "\n";
