const activityLeaveService = require("../services/activity_leaves.service");

exports.getAll = async (req, res) =>
  res.json(await activityLeaveService.findAll());

exports.create = async (req, res) =>
  res.json(await activityLeaveService.create(req.body));

exports.update = async (req, res) =>
  res.json(await activityLeaveService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await activityLeaveService.delete(req.params.id));

exports.getAllData = async (req, res) =>
  res.json(await activityLeaveService.findAllData());  