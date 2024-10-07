const db = require("../db/models");

exports.findAll = async () => await db.tbl_activity_point.findAll();

exports.create = async (data) => await db.tbl_activity_point.create(data);

exports.update = async (id, data) =>
  await db.tbl_activity_point.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_activity_point.destroy({
    where: {
      id,
    },
  });
