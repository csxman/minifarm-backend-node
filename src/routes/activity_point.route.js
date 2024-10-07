const router = require("express").Router();
const activityPointController = require("../controllers/activity_point.controller");

router.get("/get", activityPointController.getAll);
router.post("/", activityPointController.create);
router.put("/:id", activityPointController.update);
router.delete("/:id", activityPointController.delete);

module.exports = router;
