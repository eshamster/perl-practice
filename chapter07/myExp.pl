#!/usr/bin/env perl -w

my $i = 'robot';

# Note:
# 下記のmyを取っても最後の出力は"I, robot."になる。
# forの変数は暗黙にlexicalになる？(そうした仕様は見つけられず)
for my $i (1..5) {
    &kurikaeshiShori($i);
}

print "I, $i.\n";

sub kurikaeshiShori {
    my $i = shift;
    print "i is $i now\n";
    $i = sqrt($i);
    print "root(i) is $i now\n";
}
