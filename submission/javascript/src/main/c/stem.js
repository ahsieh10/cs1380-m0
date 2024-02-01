#!/usr/bin/env node

// use Porter Stemmer to stem individual terms in a streaming fashion

var readline = require('readline');
var natural = require('natural');

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
<<<<<<< HEAD
  terminal: false,
});

rl.on('line', function(line) {
  // TODO some code
  console.log(natural.PorterStemmer.stem(line));
=======
  terminal: false
});

rl.on('line', function (line) {
  // TODO some code
  console.log(natural.PorterStemmer.stem(line))
>>>>>>> parent of 33bde97 (made lint fixes)
});
