#!/bin/bash

set -eu

# uniqTestV3.plは相対パス指定でrequireしているため、
# 基本的には(@INCに含まれない所にarrayUtil.plが置かれている限りは)
# 同一フォルダからしか正常に実行できない。
#
# $ cd .../perl-practice/chapter06
# $ ./uniqTestV3.pl         # OK!
#
# $ cd .../perl-practice
# $ chapter06/uniqTestV3.pl # NG... :-(
#
# このシェルではPERL5LIBを設定してからuniqTestV3.plを
# 呼び出すことでどこからでも実行できるようにする
#
# 目標:
# $ cd .../perl-practice/chapter06
# $ ./tryPERL5LIB.sh         # OK!
#
# $ cd .../perl-practice
# $ chapter06/tryPERL5LIB.sh # OK! ;-)

base_path="$(dirname ${0})"
export PERL5LIB="${base_path}"
${base_path}/uniqTestV3.pl
