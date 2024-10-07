'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class tbl_logistic_sendcane extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  tbl_logistic_sendcane.init({
    plot_key: DataTypes.STRING,
    harvest_carcut_name: DataTypes.STRING,
    driver_user_id: DataTypes.INTEGER,
    harvest_truck_license_plate: DataTypes.STRING,
    truck_status: DataTypes.STRING,
    truck_tun_driver: DataTypes.DOUBLE,
    truck_tun_fac: DataTypes.DOUBLE,
    date_start: DataTypes.STRING,
    date_fac: DataTypes.STRING,
    date_end: DataTypes.STRING,
    bin_code: DataTypes.STRING,
    bin_image: DataTypes.STRING,
    driver_desc: DataTypes.STRING,
    driver_image: DataTypes.STRING,
    admin_status: DataTypes.STRING,
    admin_date: DataTypes.STRING,
    admin_desc: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'tbl_logistic_sendcane',
    underscored: true,
    freezeTableName: true,
    underscoreAll: true,
    createdAt: "created_at",
    updateAt: "updated_at",
  });
  return tbl_logistic_sendcane;
};