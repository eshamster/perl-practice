package Triangle;

use strict;

sub new {
    my ($class, $a, $b, $c) = @_;
    bless { a => $a, b => $b, c => $c };
}

sub space {
    my $self = shift;
    warn "You are about to calculate the space of ", ref($self), " !!! \n";
    my ($a, $b, $c) = ($self->{a}, $self->{b}, $self->{c});
    my $s = ($a + $b + $c) / 2;
    sqrt($s * ($s - $a) * ($s - $b) * ($s - $c));
}

1;
