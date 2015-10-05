var fs = require('fs');
var sys = require('sys')
var exec = require('child_process').exec;
function puts(error, stdout, stderr) { sys.puts(stdout) }

function replaceStringInFile(path, find, replace) {
  fs.readFile(__dirname + '/' + path, 'utf8', function(err, data) {
    if (err) {
      throw new Error('Error reading file ' + __dirname + '/' + path + ': ' + error);
    }

    var replacedFile = data.replace(find, replace);

    fs.writeFile(__dirname + '/' + path, replacedFile, function(err) {
      if (err) {
        throw new Error('Error writing file ' + __dirname + '/' + path + ': ' + error);
      }
    });
  });
}

function main() {
  // Namespace renaming
  var args = process.argv.slice(2);
  var name = args[0];
  if (name) {
      replaceStringInFile('./starter-swift/ViewController.swift', '<YOUR-FIREBASE-APP>', name);
  }

  // Pod install
  exec("pod install", puts);
}

main();
