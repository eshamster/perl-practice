package arrUtil;

sub uniq {
    my %out = map {$_, 1} @_;
    keys %out;
}

1;
