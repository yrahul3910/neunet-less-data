# Used in `get_best_models.sh` to parse the Scott-Knott results.

import os

with open('p', 'r') as f:
    best_precision = set(f.readlines())

with open('r', 'r') as f:
    best_recall = set(f.readlines())

with open('f', 'r') as f:
    best_f1 = set(f.readlines())

search_string = ''
for x in best_recall.intersection(best_precision).intersection(best_f1):
    # Ignore the \n character at the end; join by pipes
    search_string += x[:-1] + '|'

print(search_string[:-1])
# Print results
print('Precision:\n==========')
os.system('grep -E "' + search_string[:-1] + '" sp')

print('\nRecall:\n=======')
os.system('grep -E "' + search_string[:-1] + '" sr')

print('\nF1:\n========')
os.system('grep -E "' + search_string[:-1] + '" sf')

