#!/usr/bin/env perl -w

my @in = (5, 7, 3, 7, 3, 2, 5);
my @out = &uniq(@in);

for (@out) {
    print "$_ ";
}

print "\n";


sub uniq {
    my %out = ();

    for (@_) {
        $out{$_} = 1;
    }

    keys %out;
}
