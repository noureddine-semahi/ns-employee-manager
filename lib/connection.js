const util = require("util");
const mysql = require("mysql");

const connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Drowssap2020sql!",
  database: "employee_manager_db"
});

connection.connect();

connection.query = util.promisify(connection.query);

module.exports = connection;