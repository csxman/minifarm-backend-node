const db = require("../db/models");

exports.findAll = async () => await db.tbl_cane_activity.findAll();

exports.create = async (data) => await db.tbl_cane_activity.create(data);

exports.update = async (id, data) =>
  await db.tbl_cane_activity.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_cane_activity.destroy({
    where: {
      id,
    },
  });
