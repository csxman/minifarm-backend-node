const db = require("../db/models");

exports.findAll = async () => await db.tbl_soil_condition.findAll();

exports.create = async (data) => await db.tbl_soil_condition.create(data);

exports.update = async (id, data) =>
  await db.tbl_soil_condition.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_soil_condition.destroy({
    where: {
      id,
    },
  });
