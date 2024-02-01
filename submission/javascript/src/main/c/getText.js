#!/usr/bin/env node

// Extract text from a web page

<<<<<<< HEAD
const {convert} = require('html-to-text');
=======
const { convert } = require('html-to-text');
>>>>>>> parent of 33bde97 (made lint fixes)
const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
});

// TODO Add some code
<<<<<<< HEAD
allDocument = '';

rl.on('line', (line) => {
  // TODO Add some code
  allDocument += line;
  allDocument += '\n';
=======
allDocument = ""

rl.on('line', (line) => {
  // TODO Add some code
  allDocument += line
  allDocument += '\n'
>>>>>>> parent of 33bde97 (made lint fixes)
});

rl.on('close', () => {
  // TODO Add some code
<<<<<<< HEAD
  const text = convert(allDocument);
  console.log(text);
});
=======
  const text = convert(allDocument)
  console.log(text)
});
>>>>>>> parent of 33bde97 (made lint fixes)
