const fs = require('fs');

let reader = require('readline').createInterface({
	input: fs.createReadStream('experiments.txt')
});

reader.on('line', line => {
	if (line.startsWith('Experiment')) {
		let matches = line.match(/({.*})/);
		let jsonString = matches[1];

		let config = JSON.parse(jsonString);
		process.stdout.write('X');

		if (config['deep_learner'])
			process.stdout.write('1');
		else
			process.stdout.write('0');
		
		process.stdout.write(config['n_layers'].toString());
		
		if (config['lipschitz_lr'])
			process.stdout.write('1');
		else
			process.stdout.write('0');
		
		if (config['reduce_data'])
			process.stdout.write('1');
		else
			process.stdout.write('0');
		
		process.stdout.write(config['embedding_dims'].toString());
		process.stdout.write(config['k'].toString());
		
		if (config['oversample'])
			process.stdout.write('1');
		else
			process.stdout.write('0');

		if (config['activation'] == 'relu')
			process.stdout.write('0 ');
		else
			process.stdout.write('1 ');
	} else if (line.startsWith('Precision')) {
		let matches = line.match(/\[(.*)\]/);
		console.log(matches[1].replace(/,/g, ''));
	}
});
