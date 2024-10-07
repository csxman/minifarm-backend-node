const db = require("../db/models");

exports.findAll = async () => await db.tbl_cane_varieties.findAll();

exports.create = async (data) => await db.tbl_cane_varieties.create(data);

exports.update = async (id, data) =>
  await db.tbl_cane_varieties.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_cane_varieties.destroy({
    where: {
      id,
    },
  });
