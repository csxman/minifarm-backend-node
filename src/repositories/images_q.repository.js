const db = require("../db/db");

exports.findOneImage = async () =>
  await db.ExecDataNoIndex(
    `SELECT *  FROM tbl_images  order by id desc LIMIT 1`
  );
