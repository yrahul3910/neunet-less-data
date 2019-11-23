import sys

if len(sys.argv) < 2:
    print('Usage: get_distances DEFAULT [SKIP_LIST]')
    sys.exit()

benchmark = sys.argv[1]
skip_list = []

if len(sys.argv) == 3:
    skip_list = [int(x) for x in sys.argv[2].split(',')]

for line in sys.stdin:
    diff = sum([x != y for i, (x, y) in enumerate(zip(benchmark, line)) if i not in skip_list])
    print(line[:-1], '\t', str(diff))

