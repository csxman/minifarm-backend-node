const db = require("../db/models");

exports.findAll = async () => await db.tbl_farmer.findAll();

exports.create = async (data) => await db.tbl_farmer.create(data);

exports.update = async (id, data) =>
  await db.tbl_farmer.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_farmer.destroy({
    where: {
      id,
    },
  });
