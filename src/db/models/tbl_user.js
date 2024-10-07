"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class tbl_user extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  tbl_user.init(
    {
      user_full_name: DataTypes.STRING,
      user_type_id: { type: DataTypes.INTEGER, defaultValue: 0 },
      company_id: { type: DataTypes.INTEGER, defaultValue: 0 },
      department_id: { type: DataTypes.INTEGER, defaultValue: 0 },
      user_role: DataTypes.STRING,
      user_tel: DataTypes.STRING,
      user_address: DataTypes.STRING,
      username: DataTypes.STRING,
      password: DataTypes.STRING,
      user_created: { type: DataTypes.INTEGER, defaultValue: 0 },
      user_updated: { type: DataTypes.INTEGER, defaultValue: 0 },
    },
    {
      sequelize,
      modelName: "tbl_user",
      underscored: true,
      freezeTableName: true,
      underscoreAll: true,
      createdAt: "created_at",
      updateAt: "updated_at",
    }
  );
  return tbl_user;
};
