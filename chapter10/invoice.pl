#!/usr/bin/env perl -w

use strict;
use Heppoko;

my $class = 'Heppoko';

my ($kaishaMei, $tenmei, $shachou, $juusho, $denwa, $bank) =
    map { $class->$_ } qw(kaishaMei tenmei shachou juusho denwa bank);

print <<EOD

請求書

このたびはお買い上げありがとうございます。
以下のようにご請求いたします。

製品             数量   単価    金額
へっぽこ石鹸      10個   50円   500円
へっぽこクリーム   5本  2000円  10000円
合計                          10500円

$kaishaMei $tenmei
$juusho
$denwa
銀行口座: $bank
取締役社長: $shachou
EOD
