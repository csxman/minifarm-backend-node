const router = require("express").Router();
const activityCanecutController = require("../controllers/activity_canecut.controller");

router.get("/get", activityCanecutController.getAll);
router.get("/getdata", activityCanecutController.getAllData);
router.post("/", activityCanecutController.create);
router.put("/:id", activityCanecutController.update);
router.delete("/:id", activityCanecutController.delete);

module.exports = router;
