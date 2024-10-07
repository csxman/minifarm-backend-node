const db = require("../db/models");

exports.findAll = async () => await db.tbl_gis_plot.findAll();

exports.create = async (data) => await db.tbl_gis_plot.create(data);

exports.update = async (id, data) =>
  await db.tbl_gis_plot.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_gis_plot.destroy({
    where: {
      id,
    },
  });
