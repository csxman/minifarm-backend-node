"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class tbl_activity_point extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  tbl_activity_point.init(
    {
      point_key: DataTypes.STRING,
      point_type_id: DataTypes.STRING,
      point_type_name: DataTypes.STRING,
      point_x: DataTypes.STRING,
      point_y: DataTypes.STRING,
      user_created: DataTypes.INTEGER,
      created_at: DataTypes.DATE,
      user_updated: DataTypes.INTEGER,
      updated_at: DataTypes.DATE,
    },
    {
      sequelize,
      modelName: "tbl_activity_point",
      underscored: true,
      freezeTableName: true,
      underscoreAll: true,
      createdAt: "created_at",
      updateAt: "updated_at",
    }
  );
  return tbl_activity_point;
};
