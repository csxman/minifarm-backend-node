const db = require("../db/models");
const { QueryTypes } = require('sequelize');

exports.findAll = async () => await db.tbl_activity_canecut.findAll();

exports.create = async (data) => await db.tbl_activity_canecut.create(data);

exports.update = async (id, data) =>
  await db.tbl_activity_canecut.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_activity_canecut.destroy({
    where: {
      id,
    },
  });

  exports.findQueryAll = async () =>{
    const data = await db.sequelize.query(`SELECT actc.id,fm.quota_id,fm.farmer_pre,fm.farmer_name,fm.farmer_lname,gp.plot_key,gp.plot_no,gp.plot_area,cct.cane_cuted_type_name,
    'ตัดอ้อย' as act_name,actc.cane_type_cut,
    CASE
        WHEN actc.cane_type_cut = 1 THEN "อ้อยสด"
        WHEN actc.cane_type_cut = 2 THEN "อ้อยไฟไหม้"
        ELSE "ไม่ระบุ"
    END AS cane_type_cut_name,
        hvc.harvest_carcut_name,hvt.harvest_truck_license_plate,pt.pay_name,actc.plot_cost_per_rai,actc.plot_cost_avg,actc.desc,actc.image,actc.created_at,
        duser.user_full_name
        FROM tbl_activity_canecut actc
        LEFT JOIN tbl_gis_plot gp on gp.plot_key = actc.plot_key
        LEFT JOIN tbl_farmer fm on fm.id = gp.quota_id
        LEFT JOIN tbl_cane_cuted_type cct on cct.id = actc.canecut_type_id
        LEFT JOIN tbl_harvest_carcut hvc on hvc.id = actc.harvest_carcut_id
        LEFT JOIN tbl_harvest_truck hvt on hvt.id = actc.harvest_driver_id
        LEFT JOIN tbl_pay_type pt on pt.pay_id = actc.pay_type_id
        LEFT JOIN tbl_user duser on duser.id = actc.user_created
        ORDER BY actc.created_at DESC`, { type: QueryTypes.SELECT });
  
    return data
  }
