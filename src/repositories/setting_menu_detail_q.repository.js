const db = require("../db/db");

exports.findListMenuDetailById = async (id) => {
  //   console.log("findListMenuDetailById :" + id);
  let q_index = [id];
  const res = await db.ExecDataByIndex(
    `SELECT tbl_setting_menu_detail.id as id,
    tbl_setting_group_menu.sgm_name,
    tbl_config_group_menu.cgm_name,
    tbl_config_menu_detail.cmd_name,
    tbl_config_menu_detail.cmd_route,
    smd_view,smd_add,smd_edit,smd_del
    FROM tbl_setting_menu_detail 
    left join tbl_setting_group_menu 
    on tbl_setting_group_menu.id = tbl_setting_menu_detail.setting_group_menu_id
    left join tbl_config_group_menu
    on tbl_setting_menu_detail.group_menu_id = tbl_config_group_menu.id
    left join tbl_config_menu_detail
    on tbl_setting_menu_detail.menu_detail_id = tbl_config_menu_detail.id
    WHERE tbl_setting_menu_detail.setting_group_menu_id = ?`,
    q_index
  );

  //   console.log("findListMenuDetailById :" + res);
  return res;
};
