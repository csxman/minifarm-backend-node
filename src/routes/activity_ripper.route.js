const router = require("express").Router();
const activityRipperController = require("../controllers/activity_ripper.controller");

router.get("/get", activityRipperController.getAll);
router.post("/", activityRipperController.create);
router.put("/:id", activityRipperController.update);
router.delete("/:id", activityRipperController.delete);

module.exports = router;
