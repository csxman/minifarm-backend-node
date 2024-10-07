const db = require("../db/models");
const { QueryTypes } = require('sequelize');

exports.findAll = async () => await db.tbl_activity_adjust.findAll();

exports.create = async (data) => await db.tbl_activity_adjust.create(data);

exports.update = async (id, data) =>
  await db.tbl_activity_adjust.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_activity_adjust.destroy({
    where: {
      id,
    },
  });

exports.findQueryAll = async () =>{
  const data = await db.sequelize.query(`SELECT adj.id,gp.plot_key,gp.plot_no,gp.plot_area,ajt.act_name,pay.pay_name,duser.user_full_name,du.driver_user_name,
  adj.register_id,adj.plot_cost_per_rai,adj.plot_cost_avg,adj.desc,adj.image,adj.user_created,adj.created_at,fm.farmer_pre,fm.farmer_name,fm.farmer_lname,fm.quota_id
  FROM tbl_activity_adjust adj 
  LEFT JOIN tbl_adjust_type ajt on ajt.act_id = adj.act_id
  LEFT JOIN tbl_gis_plot gp on gp.plot_key = adj.plot_key
  LEFT JOIN tbl_pay_type pay on pay.pay_id = adj.pay_type_id
  LEFT JOIN tbl_user duser on duser.id = adj.user_created
  LEFT JOIN tbl_driver_user du on du.id = adj.driver_id 
  LEFT JOIN tbl_farmer fm on fm.id = gp.quota_id
  ORDER BY adj.created_at DESC`, { type: QueryTypes.SELECT });

  return data
}
