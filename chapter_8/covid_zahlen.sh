#! /bin/bash

file=../../scripting_learning_materials/08/covid.csv

grep Österreich $file | cut -d ';' -f 1,8 | tail -n 5