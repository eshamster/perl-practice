use strict 'vars';

package arrUtil;

our $version = "6.0";

sub uniq {
    my %out = map {$_, 1} @_;
    keys %out;
}

1;
