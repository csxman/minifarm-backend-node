const companyRepository = require('../repositories/company.repository');

exports.findAll = async (id) => await companyRepository.findCompanyAll(id);
