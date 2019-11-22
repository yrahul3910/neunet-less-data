#!/bin/bash

tail -n 9 experiment_results/final-ant/selected.txt | cut -d ' ' -f 5 | python3 code/model_code_to_config.py
