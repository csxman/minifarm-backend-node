const db = require("../db/models");

exports.findAll = async () => await db.Customer.findAll();

exports.findLastTop1 = async () =>
  await db.Customer.findOne({
    order: [["id", "DESC"]],
  });

exports.create = async (data) => await db.Customer.create(data);

exports.update = async (id, data) =>
  await db.Customer.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.Customer.destroy({
    where: {
      id,
    },
  });
