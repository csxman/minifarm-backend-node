const router = require("express").Router();
const activityLeaveController = require("../controllers/activity_leaves.controller");

router.get("/get", activityLeaveController.getAll);
router.get("/getdata", activityLeaveController.getAllData);
router.post("/", activityLeaveController.create);
router.put("/:id", activityLeaveController.update);
router.delete("/:id", activityLeaveController.delete);

module.exports = router;
