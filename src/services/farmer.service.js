const farmerRepository = require("../repositories/farmer.repository");

exports.findAll = async () => await farmerRepository.findAll();

exports.create = async (data) => await farmerRepository.create(data);

exports.update = async (id, data) =>
  await farmerRepository.update(id, data);

exports.delete = async (id) => await farmerRepository.delete(id);
