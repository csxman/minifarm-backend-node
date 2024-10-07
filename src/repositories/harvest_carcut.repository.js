const db = require("../db/models");

exports.findAll = async () => await db.tbl_harvest_carcut.findAll();

exports.create = async (data) => await db.tbl_harvest_carcut.create(data);

exports.update = async (id, data) =>
  await db.tbl_harvest_carcut.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_harvest_carcut.destroy({
    where: {
      id,
    },
  });
