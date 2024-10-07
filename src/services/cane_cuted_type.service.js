const caneCutedTypeRepository = require("../repositories/cane_cuted_type.repository");

exports.findAll = async () => await caneCutedTypeRepository.findAll();

exports.create = async (data) => await caneCutedTypeRepository.create(data);

exports.update = async (id, data) =>
  await caneCutedTypeRepository.update(id, data);

exports.delete = async (id) => await caneCutedTypeRepository.delete(id);
