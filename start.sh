#!/bin/sh

path="../${1}"
echo "first arg: ${path}"
if [ ! -d "${path}" ]
then
    echo "Creating direction..."
    mkdir ./${path}
fi

rm -f ./${path}/*
rm -Rf ./${path}/*
echo "Creating files..."
cp ./templates/main.cpp ./${path}
sed -i "s/NAZWA_ZADANIA/${1}/g" ./${path}/main.cpp
cp ./templates/brut.cpp ./${path}
sed -i "s/NAZWA_ZADANIA/${1}/g" ./${path}/brut.cpp
cp ./templates/Makefile ./${path}

mkdir ./${path}/testing
mkdir ./${path}/testing/in
mkdir ./${path}/testing/out
cp ./templates/generate_input.cpp ./${path}/testing
sed -i "s/NAZWA_ZADANIA/${1}/g" ./${path}/testing/generate_input.cpp
cp ./templates/test.sh ./${path}/testing
sed -i "s/NAZWA_ZADANIA/${1}/g" ./${path}/testing/test.sh
cp ./templates/test_from_out.sh ./${path}/testing
sed -i "s/NAZWA_ZADANIA/${1}/g" ./${path}/testing/test_from_out.sh
cp ./templates/xd/Makefile ./${path}/testing
echo "Done!"
