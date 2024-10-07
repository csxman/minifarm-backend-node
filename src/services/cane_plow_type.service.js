const canePlowTypeRepository = require("../repositories/cane_plow_type.repository");

exports.findAll = async () => await canePlowTypeRepository.findAll();

exports.create = async (data) => await canePlowTypeRepository.create(data);

exports.update = async (id, data) =>
  await canePlowTypeRepository.update(id, data);

exports.delete = async (id) => await canePlowTypeRepository.delete(id);
