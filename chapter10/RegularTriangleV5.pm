package RegularTriangle;

use strict;

sub space {
    my ($class, $a) = @_;
    warn "You are able to calculate the space of $class !!! \n";
    my $s = ($a + $a + $a) / 2;
    sqrt($s * ($s - $a) * ($s - $a) * ($s - $a));
}

1;
