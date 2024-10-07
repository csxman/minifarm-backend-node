const db = require("../db/models");

exports.findAll = async () => await db.tbl_user_type.findAll();

exports.findById = async (id) => await db.tbl_user_type.findByPk(id);

exports.create = async (data) => await db.tbl_user_type.create(data);

exports.update = async (id, data) =>
  await db.tbl_user_type.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_user_type.destroy({
    where: {
      id,
    },
  });
