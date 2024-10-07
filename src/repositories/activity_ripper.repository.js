const db = require("../db/models");

exports.findAll = async () => await db.tbl_activity_ripper.findAll();

exports.create = async (data) => await db.tbl_activity_ripper.create(data);

exports.update = async (id, data) =>
  await db.tbl_activity_ripper.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_activity_ripper.destroy({
    where: {
      id,
    },
  });
