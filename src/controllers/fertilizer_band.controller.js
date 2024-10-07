const fertilizerBandService = require("../services/fertilizer_band.service");

exports.getAll = async (req, res) =>
  res.json(await fertilizerBandService.findAll());

exports.create = async (req, res) =>
  res.json(await fertilizerBandService.create(req.body));

exports.update = async (req, res) =>
  res.json(await fertilizerBandService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await fertilizerBandService.delete(req.params.id));
