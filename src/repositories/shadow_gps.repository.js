const db = require("../db/models");
const { QueryTypes } = require('sequelize');

exports.findAll = async () => await db.tbl_shadow_gps.findAll();


exports.findAllTest = async () => {
    const users = await db.sequelize.query("SELECT reference_id FROM tbl_shadow_gps", { type: QueryTypes.SELECT });

    return users
} 

exports.getBoxAll = async () => {
  const users = await db.sequelize.query(`SELECT sb.id,sb.vehicle_register,sb.vehicle_type,sg.box_id,sg.latitude,sg.longitude ,sg.data_status,sg.gps_time
  FROM tbl_shadow_gps sg INNER JOIN tbl_shadow_box sb on sb.box_id = REPLACE(sg.box_id, '-', '')`, { type: QueryTypes.SELECT });

  return users
}

exports.create = async (data) => {
    await db.tbl_shadow_gps.create(data)
}

exports.createAndUpdate = async (data) => {
    var id_update = await db.sequelize.query('SELECT id FROM tbl_shadow_gps WHERE box_id = :box_id ; ', 
        { 
            replacements: { box_id: data.box_id },
            type: QueryTypes.SELECT 
        }
    );

    if(id_update.length === 0){
        await db.tbl_shadow_gps.create(data)
    }else{ 
        var arrayOfID = id_update.map(function(obj) {
            return obj.id;
        });
        await db.tbl_shadow_gps.update(data, {
            where: {
              id: arrayOfID,
            },
          });
    }

}

exports.update = async (id, data) =>
  await db.tbl_shadow_gps.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_shadow_gps.destroy({
    where: {
      id,
    },
  });
