const activityPointService = require("../services/activity_point.service");

exports.getAll = async (req, res) =>
  res.json(await activityPointService.findAll());

exports.create = async (req, res) =>
  res.json(await activityPointService.create(req.body));

exports.update = async (req, res) =>
  res.json(await activityPointService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await activityPointService.delete(req.params.id));
