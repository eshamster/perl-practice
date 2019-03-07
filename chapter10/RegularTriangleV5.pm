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

$ ./triangleSpaceV5.pl 
You are able to calculate the space of Triangle !!! 
6
You are able to calculate the space of RegularTriangle !!! 
15.5884572681199
=cut
