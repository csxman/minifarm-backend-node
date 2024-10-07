// const mysql = require("mysql2");

const db = require("../db/db");

// const con = mysql.createConnection({
//   host: "125.26.15.142",
//   user: "admindcm_dwjdb",
//   password: "@admindcm1234",
//   database: "admindcm_dmeets",
// });

exports.testMysqlFindAll = async () =>
  await db.ExecDataNoIndex(`SELECT A.id , A.emp_i_d , A.user_role , A.username , A.password , 
                            A.email , A.phone , A.email_verified ,A.prename_e_n , A.prename_t_h , 
                            A.firstname , A.lastname , A.firstname_e_n , A.lastname_e_n , A.emp_rate , A.abbname_e_n,
                            A.emp_status,CASE
                                WHEN A.emp_status = 'A' THEN 'Active'
                                ELSE 'Inactive'
                            END as emp_status_name,
                            A.image , A.user_create , A.created_at , A.user_update , A.updated_at , A.role ,
                            B.id as company_i_d,B.name as company_name  , 
                            C.id as department_i_d , C.name as department_name , 
                            D.id as position_i_d ,D.name as position_name 
                            FROM UserAccount A
                            LEFT JOIN Company B 
                            ON  A.company_i_d = B.id
                            LEFT JOIN Department C
                            ON A.department_i_d = C.id 
                            LEFT JOIN Position D
                            ON A.position_i_d = D.id`);

exports.findAllUser = async () =>
  await db.ExecDataNoIndex(`select u.id as id,user_full_name,
                                    user_type_id,us.user_type_name as user_type_name,
                                    user_role,
                                    user_tel,
                                    user_address,
                                    username,
                                    password,
                                    image
                              from tbl_user  u
                              left join tbl_user_type us
                              on u.user_type_id=us.id`);

exports.testMysqlFindAllByIndex = async () => {
  let q_index = ["Guest", 11];
  await db.ExecDataByIndex(
    "UPDATE tbl_company set `company_name` = ? WHERE `id` = ?",
    q_index
  );
};

exports.updateUserAccountStatusN = async (id) => {
  await db.ExecDataByIndex(
    `UPDATE UserAccount  set emp_status = 'Y' WHERE id = ?`,
    id
  );
};

exports.FindUserById = async (id) =>
  await db.ExecDataByIndex(
    `SELECT * FROM UserAccount 
    WHERE UserAccount.id = ?`,
    id
  );

exports.findAuthorize = async (id, router_path) => {
  let q_index = [id, router_path];

  const res = await db.ExecDataByIndex(
    `SELECT UserAccount.id,tbl_config_menu_detail.cmd_route,
    tbl_setting_menu_detail.smd_view, 
    tbl_setting_menu_detail.smd_add, 
    tbl_setting_menu_detail.smd_edit, 
    tbl_setting_menu_detail.smd_del  
    FROM UserAccount 
      left join tbl_setting_menu_detail on UserAccount.authorize_id = tbl_setting_menu_detail.setting_group_menu_id
      left join tbl_config_menu_detail on tbl_setting_menu_detail.menu_detail_id = tbl_config_menu_detail.id
    WHERE UserAccount.id = ? and tbl_config_menu_detail.cmd_route = ?`,
    q_index
  );

  return res;
};

// // Backup Old Api  Error find by id but where employee
// exports.FindUserById = async (id) =>
//   await db.ExecDataByIndex(
//     `SELECT * FROM UserAccount
//     WHERE UserAccount.user_role = "EMPLOYEE" and UserAccount.id = ?`,
//     id
//   );

// Select data No Index
//   await db.ExecData("SELECT * FROM tbl_company");

// "UPDATE tbl_company set `company_name` = ? WHERE `id` = ?",
//   ["Guest11", 11],

//   "SELECT * FROM tbl_company";

//   con
//     .promise()
//     .query("SELECT * FROM tbl_company")
//     .then(([rows, fields]) => {
//       //   console.log(rows);
//       con.end();
//       //   console.log("Connection closed");
//       return rows;
//     })
//     .catch(console.log);
