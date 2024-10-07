const db = require("../db/models");

exports.findAll = async () => await db.tbl_cane_cropyear.findAll();

exports.create = async (data) => await db.tbl_cane_cropyear.create(data);

exports.update = async (id, data) =>
  await db.tbl_cane_cropyear.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_cane_cropyear.destroy({
    where: {
      id,
    },
  });
