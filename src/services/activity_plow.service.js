const activityPlowRepository = require("../repositories/activity_plow.repository");

exports.findAll = async () => await activityPlowRepository.findAll();

exports.create = async (data) => await activityPlowRepository.create(data);

exports.update = async (id, data) => await activityPlowRepository.update(id, data);

exports.delete = async (id) => await activityPlowRepository.delete(id);
