const router = require("express").Router();
const activityPlotController = require("../controllers/activity_plot.controller");

router.get("/get", activityPlotController.getAll);
router.get("/getdata", activityPlotController.getAllData);
router.post("/", activityPlotController.create);
router.put("/:id", activityPlotController.update);
router.delete("/:id", activityPlotController.delete);

module.exports = router;
