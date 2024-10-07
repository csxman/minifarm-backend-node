const db = require("../db/models");
const { QueryTypes } = require('sequelize');

exports.findAll = async () => await db.tbl_activity_leaves.findAll();

exports.create = async (data) => await db.tbl_activity_leaves.create(data);

exports.update = async (id, data) =>
  await db.tbl_activity_leaves.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_activity_leaves.destroy({
    where: {
      id,
    },
  });


exports.findQueryAll = async () =>{
    const data = await db.sequelize.query(`SELECT actl.id,fm.quota_id,fm.farmer_pre,fm.farmer_name,fm.farmer_lname,gp.plot_key,gp.plot_no,gp.plot_area,
    'อัดใบ' as act_name,du.driver_user_name,hvc.harvest_carcut_name,pt.pay_name,
    actl.plot_cost_per_rai,actl.plot_cost_avg,actl.desc,actl.image,actl.created_at,duser.user_full_name
    FROM tbl_activity_leaves actl
    LEFT JOIN tbl_gis_plot gp on gp.plot_key = actl.plot_key
    LEFT JOIN tbl_farmer fm on fm.id = gp.quota_id 
    LEFT JOIN tbl_harvest_carcut hvc on hvc.id = actl.leaves_driver_id
    LEFT JOIN tbl_pay_type pt on pt.pay_id = actl.pay_type_id
    LEFT JOIN tbl_driver_user du on du.id = actl.driver_id
    LEFT JOIN tbl_user duser on duser.id = actl.user_created
    ORDER BY actl.created_at DESC`, { type: QueryTypes.SELECT });
  
    return data
}