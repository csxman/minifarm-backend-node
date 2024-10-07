const router = require("express").Router();
const activityPlowController = require("../controllers/activity_plow.controller");

router.get("/get", activityPlowController.getAll);
router.post("/", activityPlowController.create);
router.put("/:id", activityPlowController.update);
router.delete("/:id", activityPlowController.delete);

module.exports = router;
