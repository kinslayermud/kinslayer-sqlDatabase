#!/bin/bash

g++ -std=c++2a -Wformat-security -Wformat -Wpointer-arith -Wcast-align -Wredundant-decls -Wcatch-value -Wpedantic -Wall -Werror -I/usr/local/include -o ./sqlDatabase.o -c ./sqlDatabase.cpp
ar rc ./libsqlDatabase.a ./sqlDatabase.o
mv ./libsqlDatabase.a /usr/local/lib/libsqlDatabase.a
cp ./sqlDatabase.h /usr/include/mysql/sqlDatabase.h
rm sqlDatabase.o

