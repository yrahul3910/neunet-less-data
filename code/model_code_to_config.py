import sys

for line in sys.stdin:
    code = line[1:]

    config = {
        'deep_learner': False,
        'n_layers': 1,
        'lipschitz_lr': False,
        'reduce_data': False,
        'embedding_dims': 2,
        'k': 3,
        'oversample': False,
        'activation': 'relu'
    }

    if code[0] == '1':
        config['deep_learner'] = True

    config['n_layers'] = code[1]

    if code[2] == '1':
        config['lipschitz_lr'] = True

    if code[3] == '1':
        config['reduce_data'] = True

    config['embedding_dims'] = code[4]
    config['k'] = code[5]
    
    if code[6] == '1':
        config['oversample'] = True

    if code[7] == '1':
        config['activation'] = 'parabola'

    print(config)
