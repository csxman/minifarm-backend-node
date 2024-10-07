const positionRepository = require('../repositories/position.repository');

exports.findAll = async (id) => await positionRepository.findPositionAll(id);
