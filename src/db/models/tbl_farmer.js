"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class tbl_farmer extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  tbl_farmer.init(
    {
      farmer_pre: DataTypes.STRING,
      farmer_name: DataTypes.STRING,
      farmer_lname: DataTypes.STRING,
      farmer_tel: DataTypes.STRING,
      farmer_address: DataTypes.STRING,
      quota_id: { type: DataTypes.INTEGER, defaultValue: 0 },
      user_created: { type: DataTypes.INTEGER, defaultValue: 0 },
      created_at: DataTypes.DATE,
      user_updated: { type: DataTypes.INTEGER, defaultValue: 0 },
      updated_at: DataTypes.DATE,
    },
    {
      sequelize,
      modelName: "tbl_farmer",
      underscored: true,
      freezeTableName: true,
      underscoreAll: true,
      createdAt: "created_at",
      updateAt: "updated_at",
    }
  );
  return tbl_farmer;
};
