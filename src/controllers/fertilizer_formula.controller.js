const fertilizerFormulaService = require("../services/fertilizer_formula.service");

exports.getAll = async (req, res) => res.json(await fertilizerFormulaService.findAll());

exports.create = async (req, res) =>
  res.json(await fertilizerFormulaService.create(req.body));

exports.update = async (req, res) =>
  res.json(await fertilizerFormulaService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await fertilizerFormulaService.delete(req.params.id));
