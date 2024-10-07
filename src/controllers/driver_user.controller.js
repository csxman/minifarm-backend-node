const driverUserService = require("../services/driver_user.service");

exports.getAll = async (req, res) =>
  res.json(await driverUserService.findAll());

exports.getById = async (req, res) =>
  res.json(await driverUserService.findById(req.params.user_id));

exports.create = async (req, res) =>
  res.json(await driverUserService.create(req.body));

exports.update = async (req, res) =>
  res.json(await driverUserService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await driverUserService.delete(req.params.id));
