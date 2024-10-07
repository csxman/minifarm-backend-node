const db = require("../db/models");

exports.add = async (account) => await db.tbl_user.create(account);

exports.findById = async (id) => await db.tbl_user.findByPk(id);

exports.findByUsername = async (username) =>
  await db.tbl_user.findOne({
    where: {
      username,
    },
  });

exports.findByUsername = async (username) =>
  await db.tbl_user.findOne({
    where: {
      username,
    },
  });

exports.delete_by_id = async (id, data) =>
  await db.tbl_user.update(data, {
    where: {
      id: id,
    },
  });

exports.update = async (id, data) =>
  await db.tbl_user.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_user.destroy({
    where: {
      id,
    },
  });
