const caneCutedTypeService = require("../services/cane_cuted_type.service");

exports.getAll = async (req, res) =>
  res.json(await caneCutedTypeService.findAll());

exports.create = async (req, res) =>
  res.json(await caneCutedTypeService.create(req.body));

exports.update = async (req, res) =>
  res.json(await caneCutedTypeService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await caneCutedTypeService.delete(req.params.id));
