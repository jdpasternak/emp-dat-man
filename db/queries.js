const db = require("./connection");

const selectAllFromDepartment = () => {
  const sql = `SELECT * FROM department`;
  return db
    .promise()
    .query(sql)
    .then(([rows]) => rows)
    .catch((err) => console.log(err));
};

module.exports = { selectAllFromDepartment };
