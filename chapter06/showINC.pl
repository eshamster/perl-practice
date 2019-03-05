#!/usr/bin/env perl -w

print join "\n", @INC;

# 実行結果
# $ ./showINC.pl 
# /Users/seki-eiji/.anyenv/envs/plenv/versions/5.16.3/lib/perl5/site_perl/5.16.3/darwin-2level
# /Users/seki-eiji/.anyenv/envs/plenv/versions/5.16.3/lib/perl5/site_perl/5.16.3
# /Users/seki-eiji/.anyenv/envs/plenv/versions/5.16.3/lib/perl5/5.16.3/darwin-2level
# /Users/seki-eiji/.anyenv/envs/plenv/versions/5.16.3/lib/perl5/5.16.3
