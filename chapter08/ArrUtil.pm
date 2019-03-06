use strict;
package ArrUtil;

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(uniq);

our $VERSION = "1.0";

sub uniq {
    my %out = map {$_, 1} @_;
    keys %out;
}

1;
