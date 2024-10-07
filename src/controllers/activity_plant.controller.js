const activityPlantService = require("../services/activity_plant.service");

exports.getAll = async (req, res) => res.json(await activityPlantService.findAll());

exports.create = async (req, res) =>
  res.json(await activityPlantService.create(req.body));

exports.update = async (req, res) =>
  res.json(await activityPlantService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await activityPlantService.delete(req.params.id));

exports.getAllData = async (req, res) =>
  res.json(await activityPlantService.findAllData()); 