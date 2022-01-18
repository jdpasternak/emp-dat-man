const mysql = require("mysql2");
const { username, password } = require("./creds");

db = mysql.createConnection({
  host: "localhost",
  user: username,
  password: password,
  database: "company",
});

module.exports = db;
