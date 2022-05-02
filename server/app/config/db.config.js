module.exports = {
  HOST: "eu-cdbr-west-02.cleardb.net",
  USER: "ba338d9fccb95f",
  PASSWORD: "d4dd95b0",
  DB: "heroku_c6f9ad1c27bc465",
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};