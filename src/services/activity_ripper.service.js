const activityRipperRepository = require("../repositories/activity_ripper.repository");

exports.findAll = async () => await activityRipperRepository.findAll();

exports.create = async (data) => await activityRipperRepository.create(data);

exports.update = async (id, data) => await activityRipperRepository.update(id, data);

exports.delete = async (id) => await activityRipperRepository.delete(id);
