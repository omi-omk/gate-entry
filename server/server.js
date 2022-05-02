const express = require("express");
const cors = require("cors");

var bcrypt = require("bcryptjs");

const app = express();

var corsOptions = {
  origin: "http://localhost:4200",
};

app.use(cors(corsOptions));

app.use(express.json());

app.use(express.urlencoded({ extended: true }));

// database
const db = require("./app/models");
const Role = db.role;
const User = db.user;
db.sequelize.sync();
//force: true will drop the table if it already exists
// db.sequelize.sync({force: true}).then(() => {
//   console.log('Drop and Resync Database with { force: true }');
//   initial();
// });

app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  res.header("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE");
  next();
});

//const entryAPI = require("./controllers/entry.controller");

// routes
require("./app/routes/auth.routes")(app);
require("./app/routes/user.routes")(app);
require("./app/routes/entry.routes")(app);
require("./app/routes/csv.routes")(app);

//app.use("/api/entry", entryAPI);
app.use(express.static("gate-entry"));

app.get("/login",(req, res)=>{
  res.redirect('/');
})
app.get("/home",(req, res)=>{
  res.redirect('/');
})
app.get("/input",(req, res)=>{
  res.redirect('/');
})

let PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});

function initial() {
  Role.create({
    id: 1,
    name: "user",
  });

  Role.create({
    id: 2,
    name: "moderator",
  });

  Role.create({
    id: 3,
    name: "admin",
  });

  User.create({
    id: 1,
    username: "neilsoftadmin",
    email: "",
    password: bcrypt.hashSync("neilsoftadmin", 8)
  }).then(user=>{
    user.setRoles([3]);
  })
}
