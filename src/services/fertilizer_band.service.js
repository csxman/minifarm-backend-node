const fertilizerBandRepository = require("../repositories/fertilizer_band.repository");

exports.findAll = async () => await fertilizerBandRepository.findAll();

exports.create = async (data) => await fertilizerBandRepository.create(data);

exports.update = async (id, data) =>
  await fertilizerBandRepository.update(id, data);

exports.delete = async (id) => await fertilizerBandRepository.delete(id);
