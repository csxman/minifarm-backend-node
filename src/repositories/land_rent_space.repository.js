const db = require("../db/models");

exports.findAll = async () => await db.tbl_land_rent_space.findAll();

exports.create = async (data) => await db.tbl_land_rent_space.create(data);

exports.update = async (id, data) =>
  await db.tbl_land_rent_space.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_land_rent_space.destroy({
    where: {
      id,
    },
  });
