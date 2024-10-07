"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class tbl_soil_condition extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  tbl_soil_condition.init(
    {
      soil_condition_name: DataTypes.STRING,
      user_created: { type: DataTypes.INTEGER, defaultValue: 0 },
      created_at: DataTypes.DATE,
      user_updated: { type: DataTypes.INTEGER, defaultValue: 0 },
      updated_at: DataTypes.DATE,
    },
    {
      sequelize,
      modelName: "tbl_soil_condition",
      underscored: true,
      freezeTableName: true,
      underscoreAll: true,
      createdAt: "created_at",
      updateAt: "updated_at",
    }
  );
  return tbl_soil_condition;
};
