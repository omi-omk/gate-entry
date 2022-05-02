const mysql = require("mysql2");
const dbProps = require("./db_properties");

module.exports = {
  getConnection: () => {
    return mysql.createConnection({
      host: dbProps.host,
      user: dbProps.user,
      password: dbProps.password,
      database: dbProps.dbName,
    });
  },
};
