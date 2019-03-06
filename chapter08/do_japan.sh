#!/bin/bash

set -eu

for use in 'use America;' \
           'use America "car";' \
           'use America "car", "cd";'\
           'use America ":round";' \
           'use America ":liquid";' \
           'use America ();'
do
    sed "s/^.*USE.*\$/${use}/" Japan.pl.in > Japan.pl
    chmod +x Japan.pl

    echo "----- ${use} -----";
    ./Japan.pl || true
done
