const db = require("../db/db");

exports.insertTrans = async (data) =>
  await db.ExecDataAdvanceTransection(
    `insert into tbl_test_transection SET ?`,
    data
  );
