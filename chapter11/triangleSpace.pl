#!/usr/bin/env perl -w

use strict;
use Triangle;

my $tri = Triangle->new(3, 4, 5);
my $space = $tri->space;

print "Triangle is $tri and its space is $space. \n";

=pod
実行結果：

$ ./triangleSpace.pl 
You are able to calculate the space of Triangle !!! 
Triangle is Triangle=HASH(0x7ff4a7803ee8) and its space is 6. 
=cut
