const db = require("mysql2");

db.createConnection({
  host: "localhost",
  user: "root",
  database: "company",
});

module.exports = db;
