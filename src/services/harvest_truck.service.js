const harvestTruckRepository = require("../repositories/harvest_truck.repository");

exports.findAll = async () => await harvestTruckRepository.findAll();

exports.create = async (data) => await harvestTruckRepository.create(data);

exports.update = async (id, data) =>
  await harvestTruckRepository.update(id, data);

exports.delete = async (id) => await harvestTruckRepository.delete(id);
