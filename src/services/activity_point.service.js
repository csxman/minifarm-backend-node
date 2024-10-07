const activityPointRepository = require("../repositories/activity_point.repository");

exports.findAll = async () => await activityPointRepository.findAll();

exports.create = async (data) => await activityPointRepository.create(data);

exports.update = async (id, data) =>
  await activityPointRepository.update(id, data);

exports.delete = async (id) => await activityPointRepository.delete(id);
