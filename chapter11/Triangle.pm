package Triangle;

use strict;

sub new {
    my ($class, $a, $b, $c) = @_;
    my $self = { a => $a, b => $b, c => $c };
    bless $self, $class;
    return $self;
}

sub space {
    my ($self) = @_;
    warn "You are about to calculate the space of ", ref($self), " !!! \n";
    my ($a, $b, $c) = ($self->{a}, $self->{b}, $self->{c});
    my $s = ($a + $b + $c) / 2;
    sqrt($s * ($s - $a) * ($s - $b) * ($s - $c));
}

1;
