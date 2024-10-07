const db = require("../db/models");

exports.findAll = async () => await db.tbl_cane_owner.findAll();

exports.create = async (data) =>
  await db.tbl_cane_owner.create(data);

exports.update = async (id, data) =>
  await db.tbl_cane_owner.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_cane_owner.destroy({
    where: {
      id,
    },
  });
