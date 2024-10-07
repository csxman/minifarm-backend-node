const userTypeService = require("../services/user_type.service");

exports.getAll = async (req, res) =>
  res.json(await userTypeService.findAll());

exports.create = async (req, res) =>
  res.json(await userTypeService.create(req.body));

exports.update = async (req, res) =>
  res.json(await userTypeService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await userTypeService.delete(req.params.id));
