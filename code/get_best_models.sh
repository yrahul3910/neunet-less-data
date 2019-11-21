#!/bin/bash
python3 scott-knott.py experiment_results/final-ant/precision.txt > sp
cat sp | tail -n 50 | cut -d ' ' -f 5 > p
python3 scott-knott.py experiment_results/final-ant/recall.txt > sr
cat sr | tail -n 50 | cut -d ' ' -f 5 > r
python3 scott-knott.py experiment_results/final-ant/f1.txt > sf
cat sf | tail -n 50 | cut -d ' ' -f 5 > f

python3 code/best_results_helper.py

#rm p r f sp sr sf
