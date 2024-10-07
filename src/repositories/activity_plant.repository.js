const db = require("../db/models");
const { QueryTypes } = require('sequelize');

exports.findAll = async () => await db.tbl_activity_plant.findAll();

exports.create = async (data) => await db.tbl_activity_plant.create(data);

exports.update = async (id, data) =>
  await db.tbl_activity_plant.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_activity_plant.destroy({
    where: {
      id,
    },
  });

exports.findQueryAll = async () =>{
    const data = await db.sequelize.query(`SELECT actp.id,fm.quota_id,fm.farmer_pre,fm.farmer_name,fm.farmer_lname,gp.plot_key,gp.plot_no,gp.plot_area,
    'ปลูกอ้อย' as act_name,
    CASE
    	WHEN actp.plant_type_id = 1 THEN "คนปลูก"
    	WHEN actp.plant_type_id = 2 THEN "รถปลูก"
    ELSE "ไม่ระบุ"
	END AS plant_type_name,cv.varieties_name,actp.bundle_sum,du.driver_user_name,pt.pay_name,
    actp.plot_cost_per_rai,actp.plot_cost_avg,actp.desc,actp.image,actp.created_at,duser.user_full_name
    FROM tbl_activity_plant actp
    LEFT JOIN tbl_gis_plot gp on gp.plot_key = actp.plot_key
    LEFT JOIN tbl_farmer fm on fm.id = gp.quota_id 
	LEFT JOIN tbl_cane_varieties cv on cv.id = actp.varieties_id
    LEFT JOIN tbl_pay_type pt on pt.pay_id = actp.pay_type_id
    LEFT JOIN tbl_driver_user du on du.id = actp.driver_id
    LEFT JOIN tbl_user duser on duser.id = actp.user_created
    ORDER BY actp.created_at DESC`, { type: QueryTypes.SELECT });
  
    return data
}