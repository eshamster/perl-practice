package RegularTriangle;

use strict;

use TriangleV4;
our @ISA = qw(Triangle);

sub space {
    my ($class, $a) = @_;
    $class->SUPER::space($a, $a, $a);
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
