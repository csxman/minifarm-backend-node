const router = require("express").Router();
const activityAdjustController = require("../controllers/activity_adjust.controller");

router.get("/get", activityAdjustController.getAll);
router.get("/getdata", activityAdjustController.getAllData);
router.post("/", activityAdjustController.create);
router.put("/:id", activityAdjustController.update);
router.delete("/:id", activityAdjustController.delete);


module.exports = router;
