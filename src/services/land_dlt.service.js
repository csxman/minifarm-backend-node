const landDLTRepository = require("../repositories/land_dlt.repository");

exports.findAll = async () => await landDLTRepository.findAll();

exports.create = async (data) => await landDLTRepository.create(data);

exports.update = async (id, data) =>
  await landDLTRepository.update(id, data);

exports.delete = async (id) => await landDLTRepository.delete(id);
