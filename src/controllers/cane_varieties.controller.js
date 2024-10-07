const caneTypeService = require("../services/cane_varieties.service");

exports.getAll = async (req, res) => res.json(await caneTypeService.findAll());

exports.create = async (req, res) =>
  res.json(await caneTypeService.create(req.body));

exports.update = async (req, res) =>
  res.json(await caneTypeService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await caneTypeService.delete(req.params.id));
