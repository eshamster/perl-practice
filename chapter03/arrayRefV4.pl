#!/usr/bin/env perl -w

$rm1 = 'January';
$rm2 = 'February';
$rm3 = 'March';
$rm4 = 'April';
$rm5 = 'May';
$rm6 = 'June';
$rm7 = 'July';
$rm8 = 'August';
$rm9 = 'September';
$rm10 = 'October';
$rm11 = 'Novenmber';
$rm12 = 'December';

my @refMonth = (\$rm1, \$rm2, \$rm3, \$rm4, \$rm5, \$rm6,
                \$rm7, \$rm8, \$rm9, \$rm10, \$rm11, \$rm12);

print "${$refMonth[4]} \n";
