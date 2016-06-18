var mysql = require('mysql');
var prompt = require('prompt');

var connector = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: ""
});

connector.connect(function(err) {
  if(err){
    console.log('error connecting to Bamazon_db');
    return;
  }
  console.log('Connection to Bamazon database has been successfully established.');
});

connector.query('SELECT * FROM Bamazon_db.products',function(err, rows) {
  if(err) throw err;
  console.log('Data received from “Bamazon” database:\n');
  console.log(rows);
});
