#!/usr/bin/env bash

set -eu

export TIME="Tardó: %Us - Consumió: %M KiB"
PROGRAMA="../tp0"
RET=0

# Correr con diff y sin Valgrind.
echo "Ejecución de pruebas unitarias de encodeo por stdin y stdout:"
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


echo "Ejecución de pruebas unitarias de encodeo por archivos:"
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
echo "Ejecución de pruebas unitarias de decodificado por stdin y stdout:"
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


echo "Ejecución de pruebas unitarias de decodificado por archivos:"
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
echo "Ejecución de pruebas unitarias de encodeo con Valgrind:"
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
echo "Ejecución de pruebas unitarias de decodificado con Valgrind:"
echo ""
# Correr con Valgrind y sin diff.
for x in *_out; do
    b=${x%_out}
    printf "${b} "

    valgrind --quiet --leak-check=full --track-origins=yes --error-exitcode=2 \
        $PROGRAMA -i ${b}_out -d -o out_tp0  >/dev/null && \
        echo "OK" || { RET=$?; echo "ERROR"; }
done


echo ""
echo "Ejecución del programa para encodear y decodificar archivos por /dev/urandom"
echo ""

for n in {1..7..1}; do
    for x in {0..5..1}; do
        bytes=$((10**n + x))
        printf "${bytes} bytes "
        head -c ${bytes} /dev/urandom > out_tmp
        cat out_tmp | $PROGRAMA | $PROGRAMA -d > out_tp0
        diff out_tmp out_tp0 &>/dev/null
        if [ $? -eq 0 ]; then
            echo "OK"
        else
            echo "ERROR"
            exit $?
        fi
    done
done

rm out_tmp
rm out_tp0
rm err_tmp

exit $RET
