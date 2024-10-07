const db = require("../db/models");

exports.findAll = async () => await db.tbl_user_type_detail.findAll();

exports.create = async (data) => await db.tbl_user_type_detail.create(data);

exports.update = async (id, data) =>
  await db.tbl_user_type_detail.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_user_type_detail.destroy({
    where: {
      id,
    },
  });
