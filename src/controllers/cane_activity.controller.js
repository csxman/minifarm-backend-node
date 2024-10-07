const caneActivityService = require("../services/cane_activity.service");

exports.getAll = async (req, res) => res.json(await caneActivityService.findAll());

exports.create = async (req, res) =>
  res.json(await caneActivityService.create(req.body));

exports.update = async (req, res) =>
  res.json(await caneActivityService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await caneActivityService.delete(req.params.id));
