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
※2つ目の "You are ~"を"Triangle"でなく"RegularTriangle"にしたい

$ ./triangleSpaceV5.pl 
You are able to calculate the space of Triangle !!! 
6
You are able to calculate the space of Triangle !!! 
15.5884572681199
=cut
