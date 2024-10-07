const router = require("express").Router();
const jwt = require("../configs/jwt");

router.use("/products", jwt.verifyToken, require("./product.route"));
router.use("/account", require("./account.route"));
router.use("/company", require("./company.route"));
router.use("/position", require("./position.route"));
router.use("/department", require("./department.route"));
router.use("/customer", require("./customer.route"));
router.use("/group-menu", require("./group_menu.route"));
router.use("/menu-detail", require("./menu_detail.route"));
router.use("/setting-group-menu", require("./setting_group_menu.route"));
router.use("/setting-menu-detail", require("./setting_menu_detail.route"));
router.use("/advance", require("./advance.route"));

router.use("/cane-activity", require("./cane_activity.route"));
router.use("/cane-type", require("./cane_type.route"));
router.use("/cane-varieties", require("./cane_varieties.route"));
router.use("/fertilizer-formula", require("./fertilizer_formula.route"));
router.use("/fertilizer-band", require("./fertilizer_band.route"));
router.use("/land-activity", require("./land_activity.route"));

router.use("/land-dlt", require("./land_dlt.route"));
router.use("/cane-owner", require("./cane_owner.route"));
router.use("/harvest-carcut", require("./harvest_carcut.route"));
router.use("/cane-cropyear", require("./cane_cropyear.route"));
router.use("/land-rent-space", require("./land_rent_space.route"));

router.use("/user-type", require("./user_type.route"));
router.use("/user-type-detail", require("./user_type_detail.route"));

router.use("/cane-plow-type", require("./cane_plow_type.route"));
router.use("/cane-spray-type", require("./cane_spray_type.route"));
router.use("/cane-cuted-type", require("./cane_cuted_type.route"));
router.use("/water-fertilizer-type", require("./water_fertilizer_type.route"));

router.use("/soil-condition", require("./soil_condition.route"));
router.use("/harvest-truck", require("./harvest_truck.route"));
router.use("/driver-user", require("./driver_user.route"));

router.use("/gis-plot", require("./gis_plot.route"));
router.use("/farmer", require("./farmer.route"));

router.use("/images-storage", require("./images.route"));

router.use("/activity-plant", require("./activity_plant.route"));
router.use("/activity-plot", require("./activity_plot.route"));
router.use("/activity-plow", require("./activity_plow.route"));
router.use("/activity-ripper", require("./activity_ripper.route"));

router.use("/activity-adjust", require("./activity_adjust.route"));
router.use("/activity-canecut", require("./activity_canecut.route"));
router.use("/activity-drone", require("./activity_drone.route"));
router.use("/activity-leaves", require("./activity_leaves.route"));
router.use("/activity-point", require("./activity_point.route"));

router.use(
  "/activity-fertilizer-formula",
  require("./activity_fertilizer_formula.route")
);

router.use("/shadow-gps", require("./shadow_gps.route"));
router.use("/logistic-sendcane", require("./logistic_sendcane.route"));

module.exports = router;
