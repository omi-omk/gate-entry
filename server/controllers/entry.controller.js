const dbcon = require("../config/db_connection");

//const connection = dbcon.getConnection();

var connection;

function handleDisconnect() {
  connection = dbcon.getConnection(); // Recreate the connection, since
                                                  // the old one cannot be reused.

  connection.connect(function(err) {              // The server is either down
    if(err) {                                     // or restarting (takes a while sometimes).
      console.log('error when connecting to db:', err);
      setTimeout(handleDisconnect, 2000); // We introduce a delay before attempting to reconnect,
    }                                     // to avoid a hot loop, and to allow our node script to
  });                                     // process asynchronous requests in the meantime.
                                          // If you're also serving http, display a 503 error.
  connection.on('error', function(err) {
    console.log('db error', err);
    if(err.code === 'PROTOCOL_CONNECTION_LOST') { // Connection to the MySQL server is usually
      handleDisconnect();                         // lost due to either server restart, or a
    } else {                                      // connnection idle timeout (the wait_timeout
      throw err;                                  // server variable configures this)
    }
  });
}

handleDisconnect();

//connection.connect();

const express = require("express");

const router = express.Router();

// router.get("/",(req,res) => {
//     connection.query("select * from entry",(err,records,fields) => {
//         if(err){
//             console.error("Error while fetching data");
//         }
//         else{
//             res.send(records);
//         }
//     })
// })
router.get("/:empno",(req,res) => {
    // console.log(req.params);
    currentdate = new Date().toISOString().slice(0, 10);
    connection.query("select * from entry where empno='"+req.params.empno+"'and currentdate= '"+currentdate+"'",(err,records,fields) => {
        if(err){
            console.error("Error while fetching data");
        }
        else{
            console.error(records);
            res.send(records);
        }
    })
})

router.post("/in/",(req,res) => {

    const empno = req.body.empno;
    const currentdate = new Date().toISOString().slice(0, 10);
    const intime = req.body.intime;

    const sqlq = "INSERT INTO entry VALUES ('"+empno+"','"+currentdate+"','"+intime+"',NULL)";
    connection.query(sqlq,(err,records) => {
        if(err){
            console.error("Error while inserting data"+err);
        }
        else{
            res.send({insert:"success"});
        }
    })
})
router.put("/out/",(req,res) => {
    const empno = req.body.empno;
    const currentdate = new Date().toISOString().slice(0, 10);
    const outtime = req.body.outtime;

    const sqlq = "update entry set outtime='"+outtime+"' where empno='"+empno+"' and currentdate= '"+currentdate+"'";
    connection.query(sqlq,(err,records) => {
        if(err){
            console.error("Error while updating data"+err);
        }
        else{
            res.send({update:"success"});
        }
    })
})

module.exports = router;