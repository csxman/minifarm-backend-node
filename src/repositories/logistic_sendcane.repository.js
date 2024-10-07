const db = require("../db/models");
const { QueryTypes } = require('sequelize');

exports.findAll = async () => await db.tbl_logistic_sendcane.findAll();

exports.create = async (data) => await db.tbl_logistic_sendcane.create(data);

exports.update = async (id, data) =>
  await db.tbl_logistic_sendcane.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_logistic_sendcane.destroy({
    where: {
      id,
    },
  });

exports.findAllCustom = async () => {
  const data = await db.sequelize.query(`select ls.id,ls.driver_user_id,us.user_full_name,gp.plot_no,gp.plot_area,fm.farmer_pre,fm.farmer_name,fm.farmer_lname,ls.harvest_carcut_name,ls.harvest_truck_license_plate,ls.truck_status,ls.truck_tun_driver,
    ls.truck_tun_fac,ls.bin_code,ls.driver_desc,ls.driver_image,ls.bin_image,ls.date_start,ls.date_fac,ls.date_end,ls.admin_desc
    from tbl_logistic_sendcane ls 
    inner join tbl_gis_plot gp on gp.plot_key = ls.plot_key 
    inner join tbl_farmer fm on fm.id = gp.quota_id
    inner join tbl_user us on us.id = ls.driver_user_id
    order by ls.created_at desc`, { type: QueryTypes.SELECT });

  return data
}

exports.findCustomById = async (id) => {
  const data = await db.sequelize.query(`select ls.id,ls.driver_user_id,us.user_full_name,gp.plot_no,gp.plot_area,fm.farmer_pre,fm.farmer_name,fm.farmer_lname,ls.harvest_carcut_name,ls.harvest_truck_license_plate,ls.truck_status,ls.truck_tun_driver,
    ls.truck_tun_fac,ls.bin_code,ls.driver_desc,ls.driver_image,ls.bin_image,ls.date_start,ls.date_fac,ls.date_end,ls.admin_desc
    from tbl_logistic_sendcane ls 
    inner join tbl_gis_plot gp on gp.plot_key = ls.plot_key 
    inner join tbl_farmer fm on fm.id = gp.quota_id
    inner join tbl_user us on us.id = ls.driver_user_id
    where ls.driver_user_id = :driver_id
    order by ls.created_at desc`, { replacements: { driver_id: id },type: QueryTypes.SELECT });

  return data
}

