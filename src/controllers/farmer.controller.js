const farmerService = require("../services/farmer.service");

exports.getAll = async (req, res) =>
  res.json(await farmerService.findAll());

exports.create = async (req, res) =>
  res.json(await farmerService.create(req.body));

exports.update = async (req, res) =>
  res.json(await farmerService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await farmerService.delete(req.params.id));
