const db = require("../db/models");

exports.findAll = async () => await db.tbl_fertilizer_formula.findAll();

exports.create = async (data) => await db.tbl_fertilizer_formula.create(data);

exports.update = async (id, data) =>
  await db.tbl_fertilizer_formula.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_fertilizer_formula.destroy({
    where: {
      id,
    },
  });
