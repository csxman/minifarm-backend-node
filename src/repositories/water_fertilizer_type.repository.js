const db = require("../db/models");

exports.findAll = async () => await db.tbl_water_fertilizer_type.findAll();

exports.create = async (data) =>
  await db.tbl_water_fertilizer_type.create(data);

exports.update = async (id, data) =>
  await db.tbl_water_fertilizer_type.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_water_fertilizer_type.destroy({
    where: {
      id,
    },
  });
