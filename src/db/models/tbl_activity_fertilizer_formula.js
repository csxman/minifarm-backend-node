"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class tbl_activity_fertilizer_formula extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  tbl_activity_fertilizer_formula.init(
    {
      plot_key: DataTypes.STRING,
      plot_no: DataTypes.STRING,
      fertilizer_formula_id: DataTypes.INTEGER,
      num_of_time: DataTypes.STRING,
      image: { type: DataTypes.STRING, defaultValue: "" },
      user_created: { type: DataTypes.INTEGER, defaultValue: 0 },
      created_at: DataTypes.DATE,
      user_updated: { type: DataTypes.INTEGER, defaultValue: 0 },
      updated_at: DataTypes.DATE,
    },
    {
      sequelize,
      modelName: "tbl_activity_fertilizer_formula",
      underscored: true,
      freezeTableName: true,
      underscoreAll: true,
      createdAt: "created_at",
      updateAt: "updated_at",
    }
  );
  return tbl_activity_fertilizer_formula;
};
