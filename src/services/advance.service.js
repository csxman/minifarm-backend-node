const advanceRepository = require("../repositories/advance.repository");
const advanceRepositoryQ = require("../repositories/advance_q.repository");

exports.findAll = async () => await advanceRepository.findAll();

exports.insertTrans = async (data) =>
  await advanceRepositoryQ.insertTrans(data);

exports.create = async (data) => await advanceRepository.create(data);

exports.update = async (id, data) => await advanceRepository.update(id, data);

exports.delete = async (id) => await advanceRepository.delete(id);
