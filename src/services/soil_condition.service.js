const soilConditionRepository = require("../repositories/soil_condition.repository");

exports.findAll = async () => await soilConditionRepository.findAll();

exports.create = async (data) =>
  await soilConditionRepository.create(data);

exports.update = async (id, data) =>
  await soilConditionRepository.update(id, data);

exports.delete = async (id) => await soilConditionRepository.delete(id);
