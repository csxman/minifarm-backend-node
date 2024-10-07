"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class tbl_activity_plow extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  tbl_activity_plow.init(
    {
      plot_key: DataTypes.STRING,
      plot_no: DataTypes.STRING,
      act_id: { type: DataTypes.INTEGER, defaultValue: 0 },
      plow_id: { type: DataTypes.INTEGER, defaultValue: 0 },
      driver_id: DataTypes.STRING,
      register_id: DataTypes.STRING,
      soil_condition: { type: DataTypes.INTEGER, defaultValue: 0 },
      pay_type_id: { type: DataTypes.INTEGER, defaultValue: 0 },
      plot_cost_per_rai: DataTypes.FLOAT,
      plot_cost_avg: DataTypes.FLOAT,
      image: DataTypes.STRING,
      user_created: { type: DataTypes.INTEGER, defaultValue: 0 },
      created_at: DataTypes.DATE,
      user_updated: { type: DataTypes.INTEGER, defaultValue: 0 },
      updated_at: DataTypes.DATE,
    },
    {
      sequelize,
      modelName: "tbl_activity_plow",
      underscored: true,
      freezeTableName: true,
      underscoreAll: true,
      createdAt: "created_at",
      updateAt: "updated_at",
    }
  );
  return tbl_activity_plow;
};
