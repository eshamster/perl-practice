#!/usr/bin/env perl -w

use strict;
use Triangle;

my $tri = Triangle->new(3, 4, 5);
my $space = $tri->space;

print "sides are ", join(", ", $tri->getSides), ". \n";
print "Triangle is $tri and its space is $space. \n";


my ($a, $b, $c) = $tri->getSides;
$tri->setSides($b, $c, $a);
$space = $tri->space;

print "sides are ", join(", ", $tri->getSides), ". \n";
print "Triangle is $tri and its space is $space. \n";


$tri->setSides($b, $c, 10);
$space = $tri->space;

print "sides are ", join(", ", $tri->getSides), ". \n";
print "Triangle is $tri and its space is $space. \n";

=pod
実行結果：

$ ./triangleSpaceV3.pl 
You are about to calculate the space of Triangle !!! 
sides are 3, 4, 5. 
Triangle is Triangle=HASH(0x7ff188802ff0) and its space is 6. 
=cut
