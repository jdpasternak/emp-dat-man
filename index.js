const db = require("./db/connection");

const sql = `
SELECT 
    CONCAT(e.first_name," ",e.last_name) AS name,
    role.title AS title,
    CONCAT(em.first_name," ",em.last_name) AS manager_name
FROM employee e
INNER JOIN employee em ON e.manager_id = em.id
LEFT JOIN role ON e.role_id = role.id;
`;

db.promise()
  .query(sql)
  .then(([rows]) => {
    console.table(rows);
  })
  .catch((err) => {
    console.log(err);
  })
  .then(() => db.end());
