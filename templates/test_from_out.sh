#!/bin/bash
zad="NAZWA_ZADANIA"
clear
g++ ./../main.cpp -o main -std=c++17
for i in {0..1000}
do 
    echo $i
    ./main < in/${zad}$i.in > ${zad}.out
    diff -b ${zad}.out out/${zad}${i}.out || { rm main brut; exit 1; }
done
rm ./main
echo "DONE!"
rm ${zad}.out