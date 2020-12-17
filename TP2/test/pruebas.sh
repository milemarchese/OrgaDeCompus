#!/usr/bin/env bash

set -eu

PROGRAMA="../tp2"
RET=0

# Correr con diff y sin Valgrind.
echo "Ejecución de pruebas:"
for x in *_in; do
    b=${x%_in}
    printf "${b}... "

    cachesize=$(cat ${b}_in | cut -d$'\n' -f1)
    nways=$(cat ${b}_in | cut -d$'\n' -f2)
    blocksize=$(cat ${b}_in | cut -d$'\n' -f3)
    cmdfile=$(cat ${b}_in | cut -d$'\n' -f4)

    args="-cs ${cachesize} -w ${nways} -bs ${blocksize} ${cmdfile}"

    ($PROGRAMA ${args} > out_tmp 2> err_tmp; \
        python3 csvdiff.py ${b}_out out_tmp && \
        echo "OK") || { RET=$?; echo "ERROR"; }


done


echo "Ejecución de pruebas con valgrind:"
for x in *_in; do
    b=${x%_in}
    printf "${b}... "

    cachesize=$(cat ${b}_in | cut -d$'\n' -f1)
    nways=$(cat ${b}_in | cut -d$'\n' -f2)
    blocksize=$(cat ${b}_in | cut -d$'\n' -f3)
    cmdfile=$(cat ${b}_in | cut -d$'\n' -f4)

    args="-cs ${cachesize} -w ${nways} -bs ${blocksize} ${cmdfile}"


    valgrind --error-exitcode=2 --leak-check=full --show-leak-kinds=all --track-origins=yes \
        $PROGRAMA ${args} > out_tmp 2> err_tmp && \
        echo "OK" || { RET=$?; echo "ERROR"; }

done

rm out_tmp
rm err_tmp

exit $RET
