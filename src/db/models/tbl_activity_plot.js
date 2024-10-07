"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class tbl_activity_plot extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  tbl_activity_plot.init(
    {
      plot_key: DataTypes.STRING,
      canecut_type_id: DataTypes.INTEGER,
      harvest_carcut_id: DataTypes.INTEGER,
      image: DataTypes.STRING,
      desc: DataTypes.STRING,
      user_created: { type: DataTypes.INTEGER, defaultValue: 0 },
      created_at: DataTypes.DATE,
      user_updated: { type: DataTypes.INTEGER, defaultValue: 0 },
      updated_at: DataTypes.DATE,
    },
    {
      sequelize,
      modelName: "tbl_activity_plot",
      underscored: true,
      freezeTableName: true,
      underscoreAll: true,
      createdAt: "created_at",
      updateAt: "updated_at",
    }
  );
  return tbl_activity_plot;
};
