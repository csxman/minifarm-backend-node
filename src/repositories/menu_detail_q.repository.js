const db = require("../db/db");

exports.findAllDetailGroupMenu = async () =>
  await db.ExecDataNoIndex(
    `SELECT tbl_config_menu_detail.id As id,
    tbl_config_menu_detail.cmd_name,
    tbl_config_menu_detail.cmd_route,
    tbl_config_menu_detail.group_menu_id,
    tbl_config_group_menu.cgm_name 
    FROM tbl_config_menu_detail 
    left join tbl_config_group_menu 
    on tbl_config_group_menu.id = tbl_config_menu_detail.group_menu_id`
  );
