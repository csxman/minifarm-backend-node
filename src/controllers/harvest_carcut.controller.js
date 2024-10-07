const harvestCarcutService = require("../services/harvest_carcut.service");

exports.getAll = async (req, res) => res.json(await harvestCarcutService.findAll());

exports.create = async (req, res) =>
  res.json(await harvestCarcutService.create(req.body));

exports.update = async (req, res) =>
  res.json(await harvestCarcutService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await harvestCarcutService.delete(req.params.id));
