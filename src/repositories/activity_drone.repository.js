const db = require("../db/models");
const { QueryTypes } = require('sequelize');

exports.findAll = async () => await db.tbl_activity_drone.findAll();

exports.create = async (data) => await db.tbl_activity_drone.create(data);

exports.update = async (id, data) =>
  await db.tbl_activity_drone.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_activity_drone.destroy({
    where: {
      id,
    },
  });

  exports.findQueryAll = async () =>{
    const data = await db.sequelize.query(`SELECT actd.id,fm.quota_id,fm.farmer_pre,fm.farmer_name,fm.farmer_lname,gp.plot_key,gp.plot_no,gp.plot_area,
    'โดรน' as act_name,'โดรนปุ๋ย' as drone_type_name,ffm.fertilizer_formula_name,ffb.fertilizer_band_name,du.driver_user_name,actd.drone_id,actd.water,
    actd.plot_cost_per_rai,actd.plot_cost_avg,actd.desc,actd.image,actd.created_at,duser.user_full_name
    FROM tbl_activity_drone actd
    LEFT JOIN tbl_gis_plot gp on gp.plot_key = actd.plot_key
    LEFT JOIN tbl_farmer fm on fm.id = gp.quota_id 
    LEFT JOIN tbl_fertilizer_formula ffm on ffm.id = actd.fertilizer_formula_id
    LEFT JOIN tbl_fertilizer_band ffb on ffb.id = actd.fertilizer_band_id
    LEFT JOIN tbl_pay_type pt on pt.pay_id = actd.pay_type_id
    LEFT JOIN tbl_driver_user du on du.id = actd.driver_id
    LEFT JOIN tbl_user duser on duser.id = actd.user_created
    ORDER BY actd.created_at DESC`, { type: QueryTypes.SELECT });
  
    return data
  }