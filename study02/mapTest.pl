#!/usr/bin/env perl -w

print map $_ ** 2, (1..5); # 要素間に空白が含まれない
print "\n";
# print map {$_ ** 2} (1..5); # とも書ける

print map {($_ ** 2, ' ')} (1..5);
print "\n";

print "@{[ map $_ ** 2, (1..5) ]} \n"; # 文字列に埋め込んでみる


# --- mapKuku: 九の段 --- #
print "------\n";
print map {("9x$_=", 9 * $_, "\n")} (1..9);


# --- mapKisuu --- #
print "------\n";
print map {
    if ($_ % 2) {
        "$_";
    } else {
        ;
    }
} (1..10);
print "\n";

# --- mapKisuu2 --- #
print "------\n";
print map {$_ % 2 ? "$_" : ()} (1..10);
print "\n";
