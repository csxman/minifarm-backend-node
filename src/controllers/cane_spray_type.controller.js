const caneSprayTypeService = require("../services/cane_spray_type.service");

exports.getAll = async (req, res) =>
  res.json(await caneSprayTypeService.findAll());

exports.create = async (req, res) =>
  res.json(await caneSprayTypeService.create(req.body));

exports.update = async (req, res) =>
  res.json(await caneSprayTypeService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await caneSprayTypeService.delete(req.params.id));
