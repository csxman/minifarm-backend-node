const db = require("../db/db");

exports.findDepartmentAll = async (id) => 
  await db.ExecDataByIndex(
    `SELECT * FROM admindcm_dttest.Department
     WHERE Department.companyId = ?`,
     id
  );

