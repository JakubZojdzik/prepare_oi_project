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
cp ./templates/brut.cpp ./${path}
cp ./templates/Makefile ./${path}

mkdir ./${path}/testing
mkdir ./${path}/testing/in
mkdir ./${path}/testing/out
cp ./templates/generate_input.cpp ./${path}/testing
cp ./templates/test.sh ./${path}/testing
cp ./templates/test_from_out.sh ./${path}/testing
cp ./templates/xd/Makefile ./${path}/testing
echo "Done!"