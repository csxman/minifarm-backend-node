const logisticSendcaneService = require("../services/logistic_sendcane.service");

exports.getAll = async (req, res) =>
  res.json(await logisticSendcaneService.findAll());

exports.getAllCustom = async (req, res) =>
  res.json(await logisticSendcaneService.findAllCustom());

exports.getCustomById = async (req, res) =>
  res.json(await logisticSendcaneService.findCustomById(req.params.id));

exports.create = async (req, res) =>
  res.json(await logisticSendcaneService.create(req.body));

exports.update = async (req, res) =>
  res.json(await logisticSendcaneService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await logisticSendcaneService.delete(req.params.id));