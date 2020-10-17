#!/usr/bin/env bash

set -eu

export TIME="Tardó: %Us - Consumió: %M KiB"
PROGRAMA="../tp0"
RET=0

# Correr con diff y sin Valgrind.
echo "Ejecuciȯn de pruebas unitarias de encodeo por stdin y stdout:"
for x in *_in; do
    b=${x%_in}
    printf "${b} "

    (cat ${b}_in | $PROGRAMA > out_tmp 2> err_tmp; \
        python3 csvdiff.py ${b}_out out_tmp && \
        printf "OK\n") || { RET=$?; echo "ERROR"; }

done

# Salir si hubo errores de diff.
if [[ $RET -ne 0 ]]; then
    exit $RET
fi


echo "Ejecuciȯn de pruebas unitarias de encodeo por archivos:"
for x in *_in; do
    b=${x%_in}
    printf "${b} "

    ($PROGRAMA -i ${b}_in -o out_tp0 > out_tmp 2> err_tmp; \
        python3 csvdiff.py ${b}_out out_tp0 && \
        printf "OK\n") || { RET=$?; echo "ERROR"; }

done

# Salir si hubo errores de diff.
if [[ $RET -ne 0 ]]; then
    exit $RET
fi


# Correr con diff y sin Valgrind.
echo "Ejecuciȯn de pruebas unitarias de decodificado por stdin y stdout:"
for x in *_out; do
    b=${x%_out}
    printf "${b} "

    (cat ${b}_out | $PROGRAMA -d > out_tmp 2> err_tmp; \
        python3 csvdiff.py ${b}_in out_tmp && \
        printf "OK\n") || { RET=$?; echo "ERROR"; }
done

# Salir si hubo errores de diff.
if [[ $RET -ne 0 ]]; then
    exit $RET
fi


echo "Ejecuciȯn de pruebas unitarias de decodificado por archivos:"
for x in *_out; do
    b=${x%_out}
    printf "${b} "

    ($PROGRAMA -i ${b}_out -d -o out_tp0 > out_tmp 2> err_tmp; \
        python3 csvdiff.py ${b}_in out_tp0 && \
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
        $PROGRAMA -i ${b}_in -o out_tp0  >/dev/null && \
        echo "OK" || { RET=$?; echo "ERROR"; }
done


echo ""
echo "Ejecuciȯn de pruebas unitarias de decodificado con Valgrind:"
echo ""
# Correr con Valgrind y sin diff.
for x in *_out; do
    b=${x%_out}
    printf "${b} "

    valgrind --quiet --leak-check=full --track-origins=yes --error-exitcode=2 \
        $PROGRAMA -i ${b}_out -d -o out_tp0  >/dev/null && \
        echo "OK" || { RET=$?; echo "ERROR"; }
done

exit $RET
