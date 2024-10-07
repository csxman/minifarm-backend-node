const WaterFertilizerTypeRepository = require("../repositories/water_fertilizer_type.repository");

exports.findAll = async () => await WaterFertilizerTypeRepository.findAll();

exports.create = async (data) => await WaterFertilizerTypeRepository.create(data);

exports.update = async (id, data) =>
  await WaterFertilizerTypeRepository.update(id, data);

exports.delete = async (id) => await WaterFertilizerTypeRepository.delete(id);
