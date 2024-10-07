const harvestCarcutRepository = require("../repositories/harvest_carcut.repository");

exports.findAll = async () => await harvestCarcutRepository.findAll();

exports.create = async (data) => await harvestCarcutRepository.create(data);

exports.update = async (id, data) => await harvestCarcutRepository.update(id, data);

exports.delete = async (id) => await harvestCarcutRepository.delete(id);
