const db = require("../models");
const Entry = db.entry;
const CsvParser = require("json2csv").Parser;


const download = (req, res) => {
  Entry.findAll({
    where: {
      currentdate: new Date().toISOString().slice(0, 10)
    }
  }).then((objs) => {
    let entries = [];
    if(objs.length===0)
    {
      res.send(400);
    }
    else
    {
      objs.forEach((obj) => {
        const { empno, intime, outtime } = obj;
        entries.push({ empno, intime, outtime });
      });
    res.status(200).send(entries);
    }

    
  });
};

module.exports = {
  download
};