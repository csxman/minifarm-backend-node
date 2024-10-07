const caneCropyearService = require("../services/cane_cropyear.service");

exports.getAll = async (req, res) =>
  res.json(await caneCropyearService.findAll());

exports.create = async (req, res) =>
  res.json(await caneCropyearService.create(req.body));

exports.update = async (req, res) =>
  res.json(await caneCropyearService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await caneCropyearService.delete(req.params.id));
