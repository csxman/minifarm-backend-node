const db = require("../db/models");

exports.findAll = async () => await db.tbl_images.findAll();

exports.findOne = async () =>
  await db.tbl_images.findOne({
    order: [["id", "DESC"]],
  });

exports.create = async (data) => await db.tbl_images.create(data);

exports.update = async (id, data) =>
  await db.tbl_images.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_images.destroy({
    where: {
      id,
    },
  });

exports.add = async (activity) => await db.tbl_images.create(activity);
