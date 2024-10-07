const db = require("../db/models");

exports.findAll = async () => await db.tbl_harvest_truck.findAll();

exports.create = async (data) => await db.tbl_harvest_truck.create(data);

exports.update = async (id, data) =>
  await db.tbl_harvest_truck.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_harvest_truck.destroy({
    where: {
      id,
    },
  });
