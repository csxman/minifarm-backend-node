const router = require("express").Router();
const activityDroneController = require("../controllers/activity_drone.controller");

router.get("/get", activityDroneController.getAll);
router.get("/getdata", activityDroneController.getAllData);
router.post("/", activityDroneController.create);
router.put("/:id", activityDroneController.update);
router.delete("/:id", activityDroneController.delete);

module.exports = router;
