const fertilizerFormulaRepository = require("../repositories/fertilizer_formula.repository");

exports.findAll = async () => await fertilizerFormulaRepository.findAll();

exports.create = async (data) => await fertilizerFormulaRepository.create(data);

exports.update = async (id, data) => await fertilizerFormulaRepository.update(id, data);

exports.delete = async (id) => await fertilizerFormulaRepository.delete(id);
