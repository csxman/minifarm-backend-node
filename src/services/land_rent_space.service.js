const landRentSpaceRepository = require("../repositories/land_rent_space.repository");

exports.findAll = async () => await landRentSpaceRepository.findAll();

exports.create = async (data) => await landRentSpaceRepository.create(data);

exports.update = async (id, data) =>
  await landRentSpaceRepository.update(id, data);

exports.delete = async (id) => await landRentSpaceRepository.delete(id);
