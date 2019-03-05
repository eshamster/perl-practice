#!/usr/bin/env perl -w

use Time::HiRes;

# Note:
# DEFAULT動作を上書きした上でやっぱり止めたい場合
# (= 止める前に何かしたい場合)は
# 渡すサブルーチンの末尾でdieすれば良い？
$SIG{'INT'} = sub { print "\nOh, you pushed Ctrl-C! \n"; };

$| = 1; # バッファリングの無効化

for my $i (1..10000) {
    # 1万行出力されたくないので "\r" で...
    print "Hello! ($i) \r";
    Time::HiRes::sleep(0.001);
}

print "\n";

# Note:
# $SIG{'INT'} = 'TEST'; としたときのメッセージ↓
# SIGINT handler "TEST" not defined.
