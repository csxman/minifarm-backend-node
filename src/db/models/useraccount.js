"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class UserAccount extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  UserAccount.init(
    {
      emp_i_d: DataTypes.STRING,
      userRole: DataTypes.STRING,
      username: DataTypes.STRING,
      password: DataTypes.STRING,
      email: DataTypes.STRING,
      phone: DataTypes.STRING,
      emailVerified: { type: DataTypes.STRING, defaultValue: 0 },
      prename_t_h: DataTypes.STRING,
      firstname_e_n: DataTypes.STRING,
      lastname_e_n: DataTypes.STRING,
      prename_e_n: DataTypes.STRING,
      firstname: DataTypes.STRING,
      lastname: DataTypes.STRING,
      abbname_e_n: DataTypes.STRING,
      company_i_d: DataTypes.INTEGER,
      department_i_d: DataTypes.INTEGER,
      position_i_d: DataTypes.INTEGER,
      authorize_id: DataTypes.INTEGER,
      emp_rate: DataTypes.DECIMAL,
      emp_status: DataTypes.STRING,
      image: DataTypes.STRING,
      user_create: { type: DataTypes.INTEGER, defaultValue: 0 },
      created_at: DataTypes.DATE,
      user_update: { type: DataTypes.INTEGER, defaultValue: 0 },
      updated_at: DataTypes.DATE,
      role: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "UserAccount",
      underscored: true,
      freezeTableName: true,
      underscoreAll: true,
      createdAt: "created_at",
      updateAt: "updated_at",
    }
  );
  return UserAccount;
};
