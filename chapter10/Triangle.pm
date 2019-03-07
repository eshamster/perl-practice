package Triangle;

use strict;

sub space {
    my ($a, $b, $c) = @_;
    my $s = ($a + $b + $c) / 2;
    sqrt($s * ($s - $a) * ($s - $b) * ($s - $c));
}

1;
