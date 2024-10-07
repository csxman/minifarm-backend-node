'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('UserAccounts', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      empID: {
        type: Sequelize.STRING
      },
      userRole: {
        type: Sequelize.STRING
      },
      username: {
        type: Sequelize.STRING
      },
      password: {
        type: Sequelize.STRING
      },
      email: {
        type: Sequelize.STRING
      },
      phone: {
        type: Sequelize.STRING
      },
      emailVerified: {
        type: Sequelize.STRING
      },
      prenameTH: {
        type: Sequelize.STRING
      },
      firstname: {
        type: Sequelize.STRING
      },
      lastname: {
        type: Sequelize.STRING
      },
      prenameEN: {
        type: Sequelize.STRING
      },
      firstnameEN: {
        type: Sequelize.STRING
      },
      lastnameEN: {
        type: Sequelize.STRING
      },
      abbnameEN: {
        type: Sequelize.STRING
      },
      companyID: {
        type: Sequelize.INTEGER
      },
      departmentID: {
        type: Sequelize.INTEGER
      },
      positionID: {
        type: Sequelize.INTEGER
      },
      empRate: {
        type: Sequelize.DECIMAL
      },
      empStatus: {
        type: Sequelize.STRING
      },
      image: {
        type: Sequelize.STRING
      },
      user_create: {
        type: Sequelize.INTEGER
      },
      created_at: {
        type: Sequelize.DATE
      },
      user_update: {
        type: Sequelize.INTEGER
      },
      updated_at: {
        type: Sequelize.DATE
      },
      role: {
        type: Sequelize.STRING
      },
      created_at: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updated_at: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('UserAccounts');
  }
};