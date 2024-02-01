#!/usr/bin/env node

const readline = require('readline');
const { JSDOM } = require('jsdom');
const { URL } = require('url');

// Example usage:
var baseURL = process.argv[2];
if (baseURL.slice(-5) == ".html"){
  baseURL = baseURL.substring(0, baseURL.lastIndexOf('/'))
}
baseURL += "/"

const rl = readline.createInterface({
  input: process.stdin,
});

// TODO some code
contents = ""

rl.on('line', (line) => {
  // TODO some code
  contents += line
});

rl.on('close', () => {
  // TODO some code
  const doc = new JSDOM(contents)
  pathname = baseURL.pathname

  doc.window.document.querySelectorAll('a').forEach(link => {
    console.log(baseURL + link.href)
  });
});
