const activityPlowService = require("../services/activity_plow.service");

exports.getAll = async (req, res) => res.json(await activityPlowService.findAll());

exports.create = async (req, res) =>
  res.json(await activityPlowService.create(req.body));

exports.update = async (req, res) =>
  res.json(await activityPlowService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await activityPlowService.delete(req.params.id));
