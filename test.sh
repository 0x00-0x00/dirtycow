#!/bin/bash

echo -n "Compiling decr: ";
gcc decr.c -o decr
if [[ $? != 0 ]]; then
    echo "FAIL";
else
    echo "OK"
fi

echo -n "Compiling own: ";
gcc own.c -o own
if [[ $? != 0 ]]; then
    echo "FAIL";
else
    echo "OK";
fi

echo "Now I will test the exploit..."

./decr
./own
