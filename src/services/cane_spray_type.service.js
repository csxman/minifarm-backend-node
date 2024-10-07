const caneSprayTypeRepository = require("../repositories/cane_spray_type.repository");

exports.findAll = async () => await caneSprayTypeRepository.findAll();

exports.create = async (data) => await caneSprayTypeRepository.create(data);

exports.update = async (id, data) =>
  await caneSprayTypeRepository.update(id, data);

exports.delete = async (id) => await caneSprayTypeRepository.delete(id);
