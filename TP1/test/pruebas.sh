#!/usr/bin/env bash

set -eu

export TIME="Tardó: %Us - Consumió: %M KiB"
PROGRAMA="../tp1"
RET=0

# Correr con diff y sin Valgrind.
echo "Ejecución de pruebas:"
for x in *_in; do
    b=${x%_in}
    printf "${b} "

    var1=$(cat ${b}_in | cut -d$'\n' -f1)
    var2=$(cat ${b}_in | cut -d$'\n' -f2)

    (cat ${b}_in | $PROGRAMA ${var1} ${var2} > out_tmp 2> err_tmp; \
        python3 csvdiff.py ${b}_out out_tmp && \
        printf "OK\n") || { RET=$?; echo "ERROR"; }

done

rm out_tmp
rm err_tmp

exit $RET
