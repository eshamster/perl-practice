#!/usr/bin/env perl -w

my $i = 'robot';

# Note:
# 下記のmyを取っても最後の出力は"I, robot."になる。
# forの変数は暗黙にlexicalになる？(そうした仕様は見つけられず)
# → myなしでstrict 'vars'をつけると怒られるのでlexicalにはなっていないはず。
#   挙動的には抜けるときに元の値に書き戻されているような感じがする
# → 書いてあった... http://perldoc.jp/docs/perl/5.24.1/perlsyn.pod#Foreach32Loops
#   (引用)
#   my というキーワードが置かれていた場合、その変数は レキシカルスコープを持ち、したがってそれはループの中でのみ可視となります。
#   このキーワードがなければ、変数はループに対してローカルとなり、ループを 抜けた後で以前の値が再度取得されます。
#   変数が事前に my を使って宣言されていたならば、グローバルなものの 代わりにその変数を使いますが、
#   それもループにローカルなものとなります。 この暗黙のローカル化は foreach の中で のみ 起きます
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
