#!/usr/bin/env perl -w

use Time::HiRes;

$| = 1; # バッファリングの無効化

for my $i (1..10000) {
    # 1万行出力されたくないので "\r" で...
    print "Hello! ($i) \r";
    Time::HiRes::sleep(0.001);
}

print "\n";
