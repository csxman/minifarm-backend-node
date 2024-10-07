const db = require("../db/models");

exports.findAll = async () => await db.tbl_fertilizer_band.findAll();

exports.create = async (data) => await db.tbl_fertilizer_band.create(data);

exports.update = async (id, data) =>
  await db.tbl_fertilizer_band.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_fertilizer_band.destroy({
    where: {
      id,
    },
  });
