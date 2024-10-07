const db = require("../db/models");

exports.findAll = async () => await db.tbl_activity_plow.findAll();

exports.create = async (data) => await db.tbl_activity_plow.create(data);

exports.update = async (id, data) =>
  await db.tbl_activity_plow.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_activity_plow.destroy({
    where: {
      id,
    },
  });
