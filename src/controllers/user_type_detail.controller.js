const userTypeDetailService = require("../services/user_type_detail.service");

exports.getAll = async (req, res) => res.json(await userTypeDetailService.findAll());

exports.create = async (req, res) =>
  res.json(await userTypeDetailService.create(req.body));

exports.update = async (req, res) =>
  res.json(await userTypeDetailService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await userTypeDetailService.delete(req.params.id));
