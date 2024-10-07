const caneOwnerRepository = require("../repositories/cane_owner.repository");

exports.findAll = async () => await caneOwnerRepository.findAll();

exports.create = async (data) => await caneOwnerRepository.create(data);

exports.update = async (id, data) => await caneOwnerRepository.update(id, data);

exports.delete = async (id) => await caneOwnerRepository.delete(id);
