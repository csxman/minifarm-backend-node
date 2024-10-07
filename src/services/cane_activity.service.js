const caneActivityRepository = require("../repositories/cane_activity.repository");

exports.findAll = async () => await caneActivityRepository.findAll();

exports.create = async (data) => await caneActivityRepository.create(data);

exports.update = async (id, data) => await caneActivityRepository.update(id, data);

exports.delete = async (id) => await caneActivityRepository.delete(id);
