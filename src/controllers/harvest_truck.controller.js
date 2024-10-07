const harvestTruckService = require("../services/harvest_truck.service");

exports.getAll = async (req, res) =>
  res.json(await harvestTruckService.findAll());

exports.create = async (req, res) =>
  res.json(await harvestTruckService.create(req.body));

exports.update = async (req, res) =>
  res.json(await harvestTruckService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await harvestTruckService.delete(req.params.id));
