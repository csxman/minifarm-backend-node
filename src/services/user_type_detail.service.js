const userTypeDetailRepository = require("../repositories/user_type_detail.repository");

exports.findAll = async () => await userTypeDetailRepository.findAll();

exports.create = async (data) => await userTypeDetailRepository.create(data);

exports.update = async (id, data) => await userTypeDetailRepository.update(id, data);

exports.delete = async (id) => await userTypeDetailRepository.delete(id);
