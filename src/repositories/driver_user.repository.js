const db = require("../db/models");

exports.findAll = async () => await db.tbl_driver_user.findAll();

exports.findById = async (user_id) =>
  await db.tbl_driver_user.findAll({
    where: {
      user_id: user_id,
    },
  });

exports.create = async (data) => await db.tbl_driver_user.create(data);

exports.update = async (id, data) =>
  await db.tbl_driver_user.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_driver_user.destroy({
    where: {
      id,
    },
  });
