#!/usr/bin/env perl -w

use strict;
use TriangleV4;
use RegularTriangleV5;

my $a = 3;
my $b = 4;
my $c = 5;

my $space = Triangle->space($a, $b, $c);
print "Triangle: $space\n";
$space = Triangle->inscribedCircleSpace($a, $b, $c);
print "Triangle's Inscribed Circle: $space\n";

$a = 6;
$space = RegularTriangle->space($a);
print "RegularTriangle: $space\n";
$space = RegularTriangle->inscribedCircleSpace($a);
print "RegularTriangle's Inscribed Circle: $space\n";

=pod
実行結果：
※RegularTriangleV5.pm から実行結果を移設。
  前コミットまでも triangleSpace*.pl 側に記載しておいた方が良かったかも...

$ ./triangleSpaceV6.pl 
You are able to calculate the space of Triangle !!! 
Triangle: 6
You are about to invoke Triangle::inscribedCircleSpace using the argment 3, 4, 5 !!! 
But I don't know how to do it! 
Triangle's Inscribed Circle: UNKNOWN
You are able to calculate the space of RegularTriangle !!! 
RegularTriangle: 15.5884572681199
You are about to invoke RegularTriangle::inscribedCircleSpace using the argment 6 !!! 
But I don't know how to do it! 
RegularTriangle's Inscribed Circle: UNKNOWN
=cut
