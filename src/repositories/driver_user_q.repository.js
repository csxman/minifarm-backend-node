const db = require("../db/db");

exports.findAllUser = async () =>
  await db.ExecDataNoIndex(`SELECT du.id,driver_user_name ,du.user_id 
                                ,ifnull(us.user_full_name,'') as user_full_name
                                FROM tbl_driver_user du
                                left join tbl_user us
                                on du.user_id=us.id
                                `);
