const customerRepository = require("../repositories/customer.repository");
const customerRepositoryQ = require("../repositories/customer_q.repository");

exports.findAll = async () => await customerRepository.findAll();

exports.findLastTop1 = async () => await customerRepository.findLastTop1();

exports.findAllCustomerList = async () =>
  await customerRepositoryQ.findAllCustomerList();

exports.create = async (data) => await customerRepository.create(data);

exports.update = async (id, data) => await customerRepository.update(id, data);

exports.delete = async (id) => await customerRepository.delete(id);
