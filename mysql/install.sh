#!/bin/bash

g++ -std=c++2a -DXP_UNIX -I/usr/local/include -I/usr/local/lib/pkgconfig/../../include -I/usr/local/include -o ./sqlDatabase.o -c ./sqlDatabase.cpp
ar rc ./libsqlDatabase.a ./sqlDatabase.o
mv ./libsqlDatabase.a /usr/local/lib/libsqlDatabase.a
cp ./sqlDatabase.h /usr/include/mysql/sqlDatabase.h
rm sqlDatabase.o

