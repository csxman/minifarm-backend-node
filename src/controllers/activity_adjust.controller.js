const activityAdjustService = require("../services/activity_adjust.service");

exports.getAll = async (req, res) =>
  res.json(await activityAdjustService.findAll());

exports.create = async (req, res) =>
  res.json(await activityAdjustService.create(req.body));

exports.update = async (req, res) =>
  res.json(await activityAdjustService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await activityAdjustService.delete(req.params.id));

exports.getAllData = async (req, res) =>
  res.json(await activityAdjustService.findAllData());
