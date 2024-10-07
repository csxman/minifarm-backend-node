"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class tbl_gis_plot extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  tbl_gis_plot.init(
    {
      plot_key: DataTypes.STRING,
      plot_no: DataTypes.STRING,
      farmer_id: DataTypes.INTEGER,
      plot_polygon: DataTypes.STRING,
      plot_geometry: DataTypes.GEOMETRY,
      plot_x: DataTypes.STRING,
      plot_y: DataTypes.STRING,
      plot_address: DataTypes.STRING,
      plot_area: DataTypes.FLOAT,
      cropyear_id: DataTypes.INTEGER,
      cane_type_id: DataTypes.INTEGER,
      cane_owner_id: DataTypes.INTEGER,
      land_rent_space_id: DataTypes.INTEGER,
      land_document_license_type_id: DataTypes.INTEGER,
      plot_deed_no: DataTypes.STRING,
      cane_varieties_id: DataTypes.INTEGER,
      plot_waypoint: DataTypes.STRING,
      plot_cost_per_rai: DataTypes.FLOAT,
      plot_cost_avg: DataTypes.FLOAT,
      quota_id: { type: DataTypes.INTEGER, defaultValue: 0 },
      gis_sta: DataTypes.STRING,
      image: { type: DataTypes.STRING, defaultValue: "" },
      user_created: { type: DataTypes.INTEGER, defaultValue: 0 },
      created_at: DataTypes.DATE,
      user_updated: { type: DataTypes.INTEGER, defaultValue: 0 },
      updated_at: DataTypes.DATE,
    },
    {
      sequelize,
      modelName: "tbl_gis_plot",
      underscored: true,
      freezeTableName: true,
      underscoreAll: true,
      createdAt: "created_at",
      updateAt: "updated_at",
    }
  );
  return tbl_gis_plot;
};
