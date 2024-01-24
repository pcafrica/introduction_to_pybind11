#!/bin/bash

c++ \
  -std=c++11 -O3 -shared -fPIC \
  $(python3 -m pybind11 --includes) \
  matrix_multiplication.cpp \
  -o matrix_ops$(python3-config --extension-suffix)
