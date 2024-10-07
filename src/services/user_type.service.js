const userTypeRepository = require("../repositories/user_type.repository");

exports.findAll = async () => await userTypeRepository.findAll();

exports.findById = async (id) => await userTypeRepository.findById(id);

exports.create = async (data) => await userTypeRepository.create(data);

exports.update = async (id, data) => await userTypeRepository.update(id, data);

exports.delete = async (id) => await userTypeRepository.delete(id);
