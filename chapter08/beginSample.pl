#!/usr/bin/env perl -w

use strict;

# コンパイル (BEGIN) 時点で死ぬのでここまで来ない
print "Never output\n";

BEGIN {
    print "print in BEGIN\n";
    die; # 突然の死
    print "Never OUTPUT (begin)\n";
}

=pod
実行結果

$ ./beginSample.pl 
print in BEGIN first
Died at ./beginSample.pl line 10.
BEGIN failed--compilation aborted at ./beginSample.pl line 12.
=cut
