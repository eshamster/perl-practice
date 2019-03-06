package Triangle;

use strict;

sub space {
    my ($class, $a, $b, $c) = @_;
    warn "You are able to calculate the space of $class !!! \n";
    my $s = ($a + $b + $c) / 2;
    sqrt($s * ($s - $a) * ($s - $b) * ($s - $c));
}

1;
