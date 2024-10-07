"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Customer extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Customer.init(
    {
      cust_account: DataTypes.STRING,
      name: { type: DataTypes.STRING, defaultValue: "" },
      company_id: { type: DataTypes.STRING, defaultValue: "" },
      address: DataTypes.STRING,
      provice: DataTypes.STRING,
      zipcode: DataTypes.STRING,
      tel: DataTypes.STRING,
      contact: DataTypes.STRING,
      taxid: DataTypes.INTEGER,
      branch: DataTypes.STRING,
      payment_term: DataTypes.STRING,
      status: DataTypes.BOOLEAN,
      inserted_at: DataTypes.INTEGER,
      user_create: { type: DataTypes.INTEGER, defaultValue: 0 },
      user_update: { type: DataTypes.INTEGER, defaultValue: 0 },
    },
    {
      sequelize,
      modelName: "Customer",
      underscored: true,
      freezeTableName: true,
      underscoreAll: true,
      createdAt: "created_at",
      updatedAt: "updated_at",
    }
  );
  return Customer;
};
