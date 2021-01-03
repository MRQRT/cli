#!/usr/bin/env node
process.argv.forEach((val, index) => {
  console.log(`${index}: ${val}`);
})
console.log(process.execPath);

const chalk = require('chalk');
const log = console.log;

log(chalk.blue('\nHello') + 'World' + chalk.red('!\n'));
log(chalk.blue.bgRed.bold('Hello world!\n'));
log(chalk.blue('Hello', 'world', 'Foo', 'bar', 'biz', 'baz\n'));
log(chalk.red(':hello', chalk.underline.bgBlue('word') + '!\n'));