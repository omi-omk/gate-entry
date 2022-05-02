const db = require("../models");
const config = require("../config/auth.config");
const User = db.user;
const Role = db.role;
const Entry = db.entry;
const Empdata = db.empdata;

const Op = db.Sequelize.Op;

var jwt = require("jsonwebtoken");
var bcrypt = require("bcryptjs");

exports.getEmpNo = (req, res) => {
  currentdate = new Date().toISOString().slice(0, 10);
  Entry.findOne({
    where: {
      empno: req.params.empno,
      currentdate: currentdate,
    },
  })
    .then((entry) => {
      if (!entry) {
        return res.status(404).send({ message: "Entry Not found." });
      }

      res.status(200).send(entry);
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.getEmpData = (req, res) => {
  console.log("output: " + req.params.empno);
  Empdata.findOne({
    where: {
      empno: req.params.empno
    },
  })
    .then((entry) => {
      res.status(200).send(entry);
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.empIn = (req, res) => {
  const empno = req.body.empno;
  const currentdate = new Date().toISOString().slice(0, 10);
  const intime = req.body.intime;

  // Save Entry to Database
  Entry.create({
    empno: empno,
    currentdate: currentdate,
    intime: req.body.intime,
    outtime: null,
  })
    .then((entry) => {
      res.send({ message: "Entry registered successfully!" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.empOut = (req, res) => {
  const empno = req.body.empno;
  const currentdate = new Date().toISOString().slice(0, 10);
  const outtime = req.body.outtime;

  Entry.update(
    {
      outtime: outtime,
    },
    {
      where: {
        empno: empno,
        currentdate: currentdate,
      }
    }
  )
    .then((entry) => {
      res.send({ message: "Entry registered successfully!" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};
