const fs = require('fs');

let reader = require('readline').createInterface({
	input: fs.createReadStream('experiments.txt')
});

reader.on('line', line => {
	if (line.startsWith('Experiment')) {
		let matches = line.match(/({.*})/);
		let jsonString = matches[1];

		process.stdout.write(jsonString);
		process.stdout.write(',\n');
	}
});
