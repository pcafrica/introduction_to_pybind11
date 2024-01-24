#!/bin/bash

c++ \
  -std=c++11 -O3 -shared -fPIC \
  $(python3 -m pybind11 --includes) \
  example.cpp \
  -o example$(python3-config --extension-suffix)
