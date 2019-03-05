#!/usr/bin/env perl -w

my $menseki = &daikeiNoMenseki(3, 4, 5);
print "menseki wa $menseki desu! \n";

sub daikeiNoMenseki {
    my ($joutei, $katei, $takasa) = @_;
    my $menseki = ($joutei + $katei) * $takasa / 2;
    return $menseki
}
