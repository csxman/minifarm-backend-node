const db = require("../db/models");

exports.findAll = async () => await db.Advance.findAll();

exports.create = async (data) => await db.Advance.create(data);

exports.update = async (id, data) =>
  await db.Advance.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.Advance.destroy({
    where: {
      id,
    },
  });
