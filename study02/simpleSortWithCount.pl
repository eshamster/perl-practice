#!/usr/bin/env perl -w

my $count = 0;
print sort {myLength($b) <=> myLength($a)} <>;

sub myLength {
    my $str = shift;
    $count++;
    warn "length called for $count times ! \n";
    return length $str;
}

# Note:
# ファイルを書き出さずに2回目のソート時のカウント結果を見る
# $ study02/simpleSortWithCount.pl study02/Yeats.txt 2> /dev/null | study02/simpleSortWithCount.pl > /dev/null
