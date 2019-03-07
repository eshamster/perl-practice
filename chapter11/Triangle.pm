package Triangle;

use strict;
use Carp qw(croak);

my $subSpace = sub {
    my ($a, $b, $c) = @_;
    my $s = ($a + $b + $c) / 2;

    my $inSqrt = $s * ($s - $a) * ($s - $b) * ($s - $c);

    if ($inSqrt >= 0) {
        sqrt($inSqrt);
    } else {
        croak "you cannot construct the triangle with the sides $a, $b, $c !";
    }
};

sub new {
    my ($class, $a, $b, $c) = @_;
    bless { a => $a, b => $b, c => $c, s => $subSpace->($a, $b, $c) };
}

sub space {
    my $self = shift;
    warn "You are about to calculate the space of ", ref($self), " !!! \n";
    $self->{s};
}

1;
