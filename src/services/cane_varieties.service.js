const caneTypeRepository = require("../repositories/cane_varieties.repository");

exports.findAll = async () => await caneTypeRepository.findAll();

exports.create = async (data) => await caneTypeRepository.create(data);

exports.update = async (id, data) => await caneTypeRepository.update(id, data);

exports.delete = async (id) => await caneTypeRepository.delete(id);
