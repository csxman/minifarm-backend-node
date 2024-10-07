const advanceService = require("../services/advance.service");

exports.getAll = async (req, res) => res.json(await advanceService.findAll());

exports.insertTrans = async (req, res) =>
  res.json(await advanceService.insertTrans(req.body));

exports.create = async (req, res) =>
  res.json(await advanceService.create(req.body));

exports.update = async (req, res) =>
  res.json(await advanceService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await advanceService.delete(req.params.id));
