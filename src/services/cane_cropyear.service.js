const caneCropyearRepository = require("../repositories/cane_cropyear.repository");

exports.findAll = async () => await caneCropyearRepository.findAll();

exports.create = async (data) => await caneCropyearRepository.create(data);

exports.update = async (id, data) =>
  await caneCropyearRepository.update(id, data);

exports.delete = async (id) => await caneCropyearRepository.delete(id);
