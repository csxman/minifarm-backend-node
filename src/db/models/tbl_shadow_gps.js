'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class tbl_shadow_gps extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  tbl_shadow_gps.init({
    reference_id: DataTypes.INTEGER,
    box_id: DataTypes.STRING,
    data_status: DataTypes.INTEGER,
    receive_time: DataTypes.STRING,
    gps_time: DataTypes.STRING,
    gps_status: DataTypes.INTEGER,
    latitude: DataTypes.DOUBLE,
    longitude: DataTypes.DOUBLE,
    speed: DataTypes.DOUBLE,
    direction: DataTypes.INTEGER,
    engine_status: DataTypes.INTEGER,
    hdop: DataTypes.INTEGER,
    satellite: DataTypes.INTEGER,
    battery_backup: DataTypes.INTEGER,
    sos: DataTypes.INTEGER,
    driver_id: DataTypes.STRING,
  }, {
    sequelize,
    modelName: 'tbl_shadow_gps',
    underscored: true,
    freezeTableName: true,
    underscoreAll: true,
    createdAt: "created_at",
    updateAt: "updated_at",
  });
  return tbl_shadow_gps;
};