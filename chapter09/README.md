# 第9章
## Calendarモジュールのインストールについて

本ではCalendarモジュールを利用しているが、
現時点ではCPANからインストールできなくなっている。

2014年時点でCPANからインストールできなくなってるけど、
tarballからインストールできるよ ^^ と書いてあったので、
素直にインストールシェル書いて `PERL5LIB` の設定などをしていたが...
パスの設定を試行錯誤していると、どうも名称が変わったのでは感がしてきた。

ということで試しに...

```sh
$ cpan Calendar::Any
...
  /usr/bin/make install  -- OK
```

あるじゃん!!

モジュール名も同様に変わっているので注意。

```diff
- use Calendar;
+ use Calendar::Any;

- my $date = Calendar->new_from_Gregorian(12, 16, 2006);
+ my $date = Calendar::Any->new_from_Gregorian(12, 16, 2006);
```

(サンプルの範囲での)ライブラリ自体の非互換は、
`convert_to_xxx` が `to_xxx` に変名になった程度。
