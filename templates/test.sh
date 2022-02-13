#!/bin/bash
zad="NAZWA_ZADANIA"
clear
g++ ./../main.cpp -o main -std=c++17
g++ ./../brut.cpp -o brut -std=c++17
for i in {0..1000}
do 
    echo $i
    ./main < in/${zad}$i.in > ${zad}.out
    ./brut < in/${zad}$i.in > ${zad}_brut.out
    diff -b ${zad}.out ${zad}_brut.out || { rm main brut; exit 1; }
done
rm ./main
rm ./brut
echo "DONE!"
rm ${zad}.out
rm ${zad}_brut.out