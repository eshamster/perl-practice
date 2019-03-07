#!/usr/bin/env perl -w

use strict;
use Triangle;

my $tri = Triangle->new(1, 1, 10);
my $space = $tri->space;

print "Triangle is $tri and its space is $space. \n";

=pod
実行結果：

$ ./triangleSpace_err.pl 
you cannot construct the triangle with the sides 1, 1, 10 ! at ./triangleSpace_err.pl line 6.
=cut
