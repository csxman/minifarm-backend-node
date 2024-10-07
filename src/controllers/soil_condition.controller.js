const soilConditionService = require("../services/soil_condition.service");

exports.getAll = async (req, res) =>
  res.json(await soilConditionService.findAll());

exports.create = async (req, res) =>
  res.json(await soilConditionService.create(req.body));

exports.update = async (req, res) =>
  res.json(await soilConditionService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await soilConditionService.delete(req.params.id));
