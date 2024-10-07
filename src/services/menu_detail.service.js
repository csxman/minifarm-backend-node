const menuDetailRepository = require("../repositories/menu_detail.repository");
const menuDetailRepositoryQ = require("../repositories/menu_detail_q.repository");

exports.findAll = async () => await menuDetailRepository.findAll();

exports.findAllDetailGroupMenu = async () =>
  await menuDetailRepositoryQ.findAllDetailGroupMenu();

exports.create = async (data) => await menuDetailRepository.create(data);

exports.update = async (id, data) => await menuDetailRepository.update(id, data);

exports.delete = async (id) => await menuDetailRepository.delete(id);
