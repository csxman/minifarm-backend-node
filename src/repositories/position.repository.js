const db = require("../db/db");

exports.findPositionAll = async (id) =>
  await db.ExecDataByIndex(
    `SELECT * FROM admindcm_dttest.Position
     WHERE Position.companyId = ?`,
     id
);

