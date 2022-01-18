const db = require("./connection");

const selectAllFromDepartment = () => {
  const sql = `SELECT * FROM department`;
  return db
    .promise()
    .query(sql)
    .then(([rows]) => rows)
    .catch((err) => console.log(err));
};

const selectAllFromRole = () => {
  const sql = `
  SELECT role.title, role.id, department.name AS department_name, role.salary
  FROM role
  LEFT JOIN department ON role.department_id = department.id;
  `;
  return db
    .promise()
    .query(sql)
    .then(([rows]) => rows)
    .catch((err) => err);
};

module.exports = { selectAllFromDepartment, selectAllFromRole };
