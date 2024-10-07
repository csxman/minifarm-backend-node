const WaterFertilizerTypeService = require("../services/water_fertilizer_type.service");

exports.getAll = async (req, res) =>
  res.json(await WaterFertilizerTypeService.findAll());

exports.create = async (req, res) =>
  res.json(await WaterFertilizerTypeService.create(req.body));

exports.update = async (req, res) =>
  res.json(await WaterFertilizerTypeService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await WaterFertilizerTypeService.delete(req.params.id));
