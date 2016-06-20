//v1.0 MVP
function Bamazon() {

var mysql = require('mysql');
var inquirer = require('inquirer');

var connector = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: '',
  database: 'Bamazon_db'
});//END-connector

connector.connect(function(err) {
  if(err){
    console.log('error connecting to Bamazon_db');
    return;
  }
  console.log('Connection to Bamazon database\n has been successfully established.');
});//END-connector error-handler

function storefrontDatabase() {
  connector.query('SELECT * FROM products', function(err, inventory) {
            if (err) throw err;

            console.log('Data received from the “Bamazon” database:\n');

            var separator = '¦̵̱ ̵̱ ̵̱ ̵̱ ̵̱(̢ ̡͇̅└͇̅┘͇̅ (▤8כ−◦';
            var selectedID = [];
            var stockage = [];
            var costing = [];

            for (var i = 0; i < inventory.length; i++) {
                console.log(inventory[i].itemID + " | " + inventory[i].departmentName);
                console.log(separator);
                console.log("  product name      = " + inventory[i].productName);
                console.log("  price per unit    = " + inventory[i].price);
                console.log("  quantity in stock = " + inventory[i].stockQuantity);
                console.log('');
                selectedID.push("" + inventory[i].itemID);
                stockage.push("" + inventory[i].stockQuantity);
                costing.push("" + inventory[i].price);
            }

            selection(selectedID, stockage, costing);

        });
    } //end of storefrontDatabase function...

    function selection(options, quantities, price) {

        inquirer.prompt([{
                type: "list",
                name: "option",
                message: "What is the itemID of the product you would like to purchase?",
                choices: options
            }, {

                type: "input",
                message: "What quantity of the selected product do you want?",
                name: "quantity"
            }

        ]).then(function(choices) {

            var index = choices.option - 1;
            var grandTotal = choices.quantity * price[index];
            console.log("item id = " + options[index]);
            console.log("quantity available = " + quantities[index]);
            console.log("quantity wanted = " + choices.quantity);

            if (parseInt(choices.quantity) > parseInt(quantities[index])) {
                console.log("The “Bamazon” warehouse has insufficient quantity in stock to complete your order.\n");
                connector.end();
            } else {
                choices.quantity = quantities[index] - choices.quantity;
			console.log("The price of each individual item in this order = " + price[index]);
            console.log("The total of all products purchased = " + grandTotal);
                inventoryUpdate(choices);
            }//END availability conditional
        });//END .then (choices)

        function inventoryUpdate(choices) {
            var setInventory = {StockQuantity: parseInt(choices.quantity)};
            var itemChange = { ItemID: choices.option};

            connector.query('UPDATE products SET ? WHERE ?', [setInventory, itemChange], function(err, res) {
                if (err) throw err;
            	console.log('Your purchase has been completed.');
              connector.end();
            });
        }
    }
    storefrontDatabase();//call main storefront function
}

Bamazon();//call main wrapper/application function
