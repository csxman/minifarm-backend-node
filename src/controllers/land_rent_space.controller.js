const landRentSpaceService = require("../services/land_rent_space.service");

exports.getAll = async (req, res) =>
  res.json(await landRentSpaceService.findAll());

exports.create = async (req, res) =>
  res.json(await landRentSpaceService.create(req.body));

exports.update = async (req, res) =>
  res.json(await landRentSpaceService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await landRentSpaceService.delete(req.params.id));
