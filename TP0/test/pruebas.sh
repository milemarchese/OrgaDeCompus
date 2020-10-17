#!/usr/bin/env bash

set -eu

export TIME="Tardó: %Us - Consumió: %M KiB"
PROGRAMA="../tp0"
RET=0

# Correr con diff y sin Valgrind.
echo "Ejecuciȯn de pruebas unitarias de encodeo:"
for x in *_in; do
    b=${x%_in}
    printf "${b} "

    ($PROGRAMA -i ${b}_in > tmp_out 2> tmp_err; \
        python3 csvdiff.py ${b}_out tmp_out && \
        printf "OK\n") || { RET=$?; echo "ERROR"; }

done

# Salir si hubo errores de diff.
if [[ $RET -ne 0 ]]; then
    exit $RET
fi


# Correr con diff y sin Valgrind.
echo "Ejecuciȯn de pruebas unitarias de decodificado:"
for x in *_out; do
    b=${x%_out}
    printf "${b} "

    ($PROGRAMA -d ${b}_out > tmp_out 2> tmp_err; \
        python3 csvdiff.py ${b}_in tmp_out && \
        printf "OK\n") || { RET=$?; echo "ERROR"; }

done

# Salir si hubo errores de diff.
if [[ $RET -ne 0 ]]; then
    exit $RET
fi

echo ""
echo "Ejecuciȯn de pruebas unitarias de encodeo con Valgrind:"
echo ""
# Correr con Valgrind y sin diff.
for x in *_in; do
    b=${x%_in}
    printf "${b} "

    valgrind --quiet --leak-check=full --track-origins=yes --error-exitcode=2 \
        $PROGRAMA -i ${b}_in  >/dev/null && \
        echo "OK" || { RET=$?; echo "ERROR"; }
done

exit $RET
