#!/usr/bin/env perl -w

use strict;

my %uniq = ();

# ArrUtil.pmのVERSION変数を内部的に見ている
# なお、0.9 などはOK (存在するバージョン 1.0 の方が新しいので)
use ArrUtil 20.0;

print "ArrUtil $ArrUtil::VERSION required!\n";

my @in = (5, 7, 3, 7, 3, 2, 5);

for my $in (&uniq(@in)) {
    if (&main_uniq($in)) {
        print "$in is unique!\n";
    } else {
        print "$in is not unique!\n";
    }
}

sub main_uniq {
    my $in = shift;

    if (not $uniq{$in}) {
        $uniq{$in} = 1;
        1;
    } else {
        0;
    }
}

=pod
実行結果:
※存在するバージョンより新しいバージョンを指定しているので、意図通りのエラー

$ ./uniqTestV13.pl 
ArrUtil version 20 required--this is only version 1.0 at ./uniqTestV13.pl line 8.
BEGIN failed--compilation aborted at ./uniqTestV13.pl line 8.
=cut
