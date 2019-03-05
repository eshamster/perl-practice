#!/usr/bin/env perl -w

my $codeRef = \&cheer;
&$codeRef;
$codeRef->();

sub cheer {
    warn "Ganbare! \n";
}
