const db = require("../db/models");

exports.findAll = async () => await db.tbl_config_menu_detail.findAndCountAll();

exports.create = async (data) => await db.tbl_config_menu_detail.create(data);

exports.update = async (id, data) =>
  await db.tbl_config_menu_detail.update(data, {
    where: {
      id: id,
    },
  });

exports.delete = async (id) =>
  await db.tbl_config_menu_detail.destroy({
    where: {
      id,
    },
  });
