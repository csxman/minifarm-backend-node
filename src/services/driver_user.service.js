const driverUserRepository = require("../repositories/driver_user.repository");
const driverUserQRepository = require("../repositories/driver_user_q.repository");

exports.findAll = async () => await driverUserQRepository.findAllUser();

exports.findById = async (user_id) =>
  await driverUserRepository.findById(user_id);

exports.create = async (data) => await driverUserRepository.create(data);

exports.update = async (id, data) =>
  await driverUserRepository.update(id, data);

exports.delete = async (id) => await driverUserRepository.delete(id);
