#!/bin/sh

# This is meant to be run after sed -i .bak s/"<function parabola ...>"/\"parabola\"/g experiments.txt has been run.

# Check args
if [ $# -lt 1 ]
then
	echo "Usage: get_sk_results PATH_TO_CODE"
	exit 1
fi

# Run precision
echo "Precision"
node $1/parse_nb_cell_output.js > precision.txt
python3 $1/../scott-knott.py precision.txt

# Run recall
echo "Recall"
sed -i .bak s/Precision/Recall/g $1/parse_nb_cell_output.js
node $1/parse_nb_cell_output.js > recall.txt
python3 $1/../scott-knott.py recall.txt

# Run F1
echo "F1"
sed -i .bak s/Recall/F1/g $1/parse_nb_cell_output.js
node $1/parse_nb_cell_output.js > f1.txt
python3 $1/../scott-knott.py f1.txt

# Run runtime
echo "Runtime"
sed -i .bak s/F1/Runtime/g $1/parse_nb_cell_output.js
node $1/parse_nb_cell_output.js > runtime.txt
python3 $1/../scott-knott.py runtime.txt

# Reset
sed -i .bak s/Runtime/Precision/g $1/parse_nb_cell_output.js
rm *.bak
