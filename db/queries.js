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

const selectAllFromEmployee = () => {
  const sql = `
    SELECT e.id, e.first_name, e.last_name, role.title, department.name AS department_name, role.salary, CONCAT(em.first_name," ", em.last_name) AS manager
    FROM employee e
    LEFT JOIN employee em ON e.manager_id = em.id
    LEFT JOIN role ON e.role_id = role.id
    LEFT JOIN department ON role.department_id = department.id
    `;
  return db
    .promise()
    .query(sql)
    .then(([rows]) => rows)
    .catch((err) => err);
};

const insertIntoDepartment = (params) => {
  sql = `INSERT INTO department (name) VALUES (?)`;

  return db
    .promise()
    .query(sql, params)
    .then((result) => result)
    .catch((err) => err);
};

module.exports = {
  selectAllFromDepartment,
  selectAllFromRole,
  selectAllFromEmployee,
  insertIntoDepartment,
};
