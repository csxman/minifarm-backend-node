const landActivityService = require("../services/land_activity.service");

exports.getAll = async (req, res) =>
  res.json(await landActivityService.findAll());

exports.create = async (req, res) =>
  res.json(await landActivityService.create(req.body));

exports.update = async (req, res) =>
  res.json(await landActivityService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await landActivityService.delete(req.params.id));
