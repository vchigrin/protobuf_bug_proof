#!/bin/bash
set -e
protoc --python_out sub  --cpp_out . test.proto test_options.proto

g++ -c -fPIC baz_cc_lib.cc  -o baz_cc_lib.o
g++ -c -fPIC test_options.pb.cc  -o test_options.pb.o
g++ -c -fPIC test.pb.cc  -o test.pb.o

g++ -shared test_options.pb.o test.pb.o baz_cc_lib.o -lprotobuf -o baz.so
