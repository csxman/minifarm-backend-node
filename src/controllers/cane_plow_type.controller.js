const canePlowTypeService = require("../services/cane_plow_type.service");

exports.getAll = async (req, res) =>
  res.json(await canePlowTypeService.findAll());

exports.create = async (req, res) =>
  res.json(await canePlowTypeService.create(req.body));

exports.update = async (req, res) =>
  res.json(await canePlowTypeService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await canePlowTypeService.delete(req.params.id));
