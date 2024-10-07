const landActivityRepository = require("../repositories/land_activity.repository");

exports.findAll = async () => await landActivityRepository.findAll();

exports.create = async (data) => await landActivityRepository.create(data);

exports.update = async (id, data) =>
  await landActivityRepository.update(id, data);

exports.delete = async (id) => await landActivityRepository.delete(id);
