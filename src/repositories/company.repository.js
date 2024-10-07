const db = require("../db/db");

exports.findCompanyAll = async (id) =>
  await db.ExecDataNoIndex(
    `SELECT * FROM admindcm_dttest.Company`
  );

