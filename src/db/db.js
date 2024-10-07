const mysql = require("mysql2");
const dotenv = require("dotenv").config();

var transaction = require("node-mysql-transaction");

const con = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USERNAME,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
  timezone: "utc",
});

var trCon = transaction({
  // mysql driver set
  connection: [
    mysql.createConnection,
    {
      // mysql connection config
      host: process.env.DB_HOST,
      user: process.env.DB_USERNAME,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_DATABASE,
    },
  ],

  // create temporary connection for increased volume of async work.
  // if request queue became empty,
  // start soft removing process of the connection.
  // recommended for normal usage.
  dynamicConnection: 32,

  // set dynamicConnection soft removing time.
  idleConnectionCutoffTime: 1000,

  // auto timeout rollback time in ms
  // turn off is 0
  timeout: 600,
});

exports.ExecDataAddAdvanceTransection = async (sql, advHD) => {
  var chain = trCon.chain();
  chain
    .on("commit", function () {
      console.log("chain commit");
    })
    .on("rollback", function (err) {
      console.log(err);
    });

  for (var i = 0; i < advHD.length; i++) {
    chain.query(sql, advHD.name);
  }
  // for (var i = 0; i < 10; i += 1) {
  //   // loop in transaction
  //   chain.query(sql, q_index);
  // }
};

exports.ExecDataNoIndex = async (sql) =>
  await con
    .promise()
    .query(sql)
    .then(([rows, fields]) => {
      // console.log(rows);
      console.log(sql);
      //   con.end();
      //   console.log("Connection closed");
      return rows;
    })
    .catch(console.log);

exports.ExecDataByIndex = async (sql, q_index) =>
  await con
    .promise()
    .query(sql, q_index)
    .then(([rows, fields]) => {
      // console.log(rows);
      console.log(sql + " // index:" + q_index);
      //   con.end();
      //   console.log("Connection closed");
      return rows;
    })
    .catch(console.log);
