const landDLTService = require("../services/land_dlt.service");

exports.getAll = async (req, res) =>
  res.json(await landDLTService.findAll());

exports.create = async (req, res) =>
  res.json(await landDLTService.create(req.body));

exports.update = async (req, res) =>
  res.json(await landDLTService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await landDLTService.delete(req.params.id));
