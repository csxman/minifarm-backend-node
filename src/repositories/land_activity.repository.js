const db = require("../db/models");

exports.findAll = async () => await db.tbl_land_activity.findAll();

exports.create = async (data) => await db.tbl_land_activity.create(data);

exports.update = async (id, data) =>
  await db.tbl_land_activity.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_land_activity.destroy({
    where: {
      id,
    },
  });
