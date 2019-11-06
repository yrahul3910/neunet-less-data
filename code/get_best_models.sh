#!/bin/bash
python3 scott-knott.py experiment_results/precision.csv > sp
cat sp | tail -n 50 | cut -d ' ' -f 6 > p
python3 scott-knott.py experiment_results/recall.csv > sr
cat sr | tail -n 50 | cut -d ' ' -f 6 > r
python3 scott-knott.py experiment_results/runtime.csv > rr

python3 best_results_helper.py
#echo -e "import os;\nwith open('p', 'r') as f:\n\tl1 = set(f.readlines())\nwith open('r', 'r') as f:\n\tl2 = set(f.readlines())\nsearch = ''\nfor x in l1.intersection(l2):\n\tsearch += x[:-1] + '|'\nprint('Precision:')\nprint('==========')\nos.system('grep -E \'' + search[:-1] + '\' sp')\nprint()\nprint('Recall:')\nprint('=======')\nos.system('grep -E \'' + search[:-1] + '\' sr')\nprint()\nprint('Runtime:')\nprint('========')\nos.system('grep -E \'' + search[:-1] + '\' rr')\n" | python3

rm p r
