use strict;
package Heppoko;

sub kaishaMei { "へっぽこ産業株式会社" };
sub tenmei    { "本店" };
sub shachou   { "へっぽこ大助" };
sub juusho    { "台風県大雨市雷町 1-2-3" };
sub denwa     { "123-456-7890" };
sub bank      { "UFA 銀行赤羽支店 普通口座 #123456789" };

sub AUTOLOAD { our $AUTOLOAD; "エラー: $AUTOLOAD は定義されていない属性です" };

=pod
Note:
our $AUTOLOAD;を外すと以下のエラーになる。
同時にuse strict;を外すとエラーにならず動作も正しいので、
未定義変数参照エラー避けのための宣言と思われる。
 
$ ./invoiceV6.pl 
Global symbol "$AUTOLOAD" requires explicit package name at HeppokoV6.pm line 11.
Compilation failed in require at KosameV6.pm line 4.
BEGIN failed--compilation aborted at KosameV6.pm line 4.
Compilation failed in require at ./invoiceV6.pl line 4.
BEGIN failed--compilation aborted at ./invoiceV6.pl line 4.
=cut

1;
