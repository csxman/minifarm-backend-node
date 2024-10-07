const activityDroneService = require("../services/activity_drone.service");

exports.getAll = async (req, res) =>
  res.json(await activityDroneService.findAll());

exports.create = async (req, res) =>
  res.json(await activityDroneService.create(req.body));

exports.update = async (req, res) =>
  res.json(await activityDroneService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await activityDroneService.delete(req.params.id));

  exports.getAllData = async (req, res) =>
  res.json(await activityDroneService.findAllData());
