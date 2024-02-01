#!/usr/bin/env node

const readline = require('readline');
<<<<<<< HEAD
const {JSDOM} = require('jsdom');
// const { URL } = require('url');

// Example usage:
var baseURL = process.argv[2];
if (baseURL.lastIndexOf('/') != baseURL.length - 1 &&
baseURL.substring(baseURL.lastIndexOf('/') + 1, baseURL.length).includes('.')) {
  baseURL = baseURL.substring(0, baseURL.lastIndexOf('/'));
}
baseURL += '/';
=======
const { JSDOM } = require('jsdom');
const { URL } = require('url');

// Example usage:
var baseURL = process.argv[2];
if (baseURL.slice(-5) == ".html"){
  baseURL = baseURL.substring(0, baseURL.lastIndexOf('/'))
}
baseURL += "/"
>>>>>>> parent of 33bde97 (made lint fixes)

const rl = readline.createInterface({
  input: process.stdin,
});

// TODO some code
<<<<<<< HEAD
contents = '';

rl.on('line', (line) => {
  // TODO some code
  contents += line;
=======
contents = ""

rl.on('line', (line) => {
  // TODO some code
  contents += line
>>>>>>> parent of 33bde97 (made lint fixes)
});

rl.on('close', () => {
  // TODO some code
<<<<<<< HEAD
  const doc = new JSDOM(contents);
  pathname = baseURL.pathname;

  doc.window.document.querySelectorAll('a').forEach((link) => {
    console.log(baseURL + link.href);
=======
  const doc = new JSDOM(contents)
  pathname = baseURL.pathname

  doc.window.document.querySelectorAll('a').forEach(link => {
    console.log(baseURL + link.href)
>>>>>>> parent of 33bde97 (made lint fixes)
  });
});
