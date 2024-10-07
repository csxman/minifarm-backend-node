"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class tbl_activity_adjust extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  tbl_activity_adjust.init(
    {
      plot_key: DataTypes.STRING,
      plot_no: DataTypes.STRING,
      act_id: DataTypes.INTEGER,
      driver_id: DataTypes.INTEGER,
      register_id: DataTypes.STRING,
      pay_type_id: DataTypes.INTEGER,
      plot_cost_per_rai: DataTypes.FLOAT,
      plot_cost_avg: DataTypes.FLOAT,
      desc: DataTypes.STRING,
      image: DataTypes.STRING,
      user_created: DataTypes.INTEGER,
      created_at: DataTypes.DATE,
      user_updated: DataTypes.INTEGER,
      updated_at: DataTypes.DATE,
    },
    {
      sequelize,
      modelName: "tbl_activity_adjust",
      underscored: true,
      freezeTableName: true,
      underscoreAll: true,
      createdAt: "created_at",
      updateAt: "updated_at",
    }
  );
  return tbl_activity_adjust;
};
