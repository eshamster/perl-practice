#!/usr/bin/env perl -w

my $codeRef = \&daikeiNoMenseki;
my $menseki = &$codeRef(3, 4, 5);
print "menseki wa $menseki desu! codeRef wa $codeRef desu! \n";

sub daikeiNoMenseki {
    my ($joutei, $katei, $takasa) = @_;
    warn "korekara daikei no menseki wo keisan simasu !!! ".
        "joutei: $joutei, katei: $katei, takasa: $takasa \n";
    my $menseki = ($joutei + $katei) * $takasa / 2;
    return $menseki
}
