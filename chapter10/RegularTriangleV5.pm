package RegularTriangle;

use strict;

use TriangleV4;

sub space {
    my ($class, $a) = @_;
    Triangle::space($class, $a, $a, $a);
}

1;

=pod
実行結果：
※存在しないTriangle::spaceを直接呼ぼうとしたため、
  親のFigure::spaceまで辿り着けていない

$ ./triangleSpaceV5.pl 
you  are about to calculate the space of Triangle using the argment 3, 4, 5 !!! 
But I don't know how to do it! 
UNKNOWN
Undefined subroutine &Triangle::space called at RegularTriangleV5.pm line 9.
=cut
