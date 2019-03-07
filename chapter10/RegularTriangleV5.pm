package RegularTriangle;

use strict;

use TriangleV4;
our @ISA = qw(Triangle);

sub space {
    my ($class, $a) = @_;
    Triangle->space($a, $a, $a);
}

1;

=pod
実行結果：
※Triangleがspaceの実装を放棄したので、Figure::spaceが実行されている

$ ./triangleSpaceV5.pl 
you  are about to calculate the space of Triangle using the argment 3, 4, 5 !!! 
But I don't know how to do it! 
UNKNOWN
you  are about to calculate the space of Triangle using the argment 6, 6, 6 !!! 
But I don't know how to do it! 
UNKNOWN
=cut
