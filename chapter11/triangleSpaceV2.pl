#!/usr/bin/env perl -w

use strict;
use Triangle;

my $tri = Triangle->new(3, 4, 5);
my $space = $tri->space;

for my $key (sort keys %$tri) {
    print "key is $key and its value is", $tri->{$key}, "... \n";
}

print "Triangle is $tri and its space is $space. \n";

=pod
実行結果：

$ ./triangleSpaceV2.pl 
You are about to calculate the space of Triangle !!! 
key is a and its value is3... 
key is b and its value is4... 
key is c and its value is5... 
key is s and its value is6... 
Triangle is Triangle=HASH(0x7f873c802ff0) and its space is 6. 
=cut
