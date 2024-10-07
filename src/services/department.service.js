const departmentRepository = require('../repositories/department.repository');

exports.findAll = async (id) => await departmentRepository.findDepartmentAll(id);
