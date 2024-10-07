const router = require("express").Router();
const activityPlantController = require("../controllers/activity_plant.controller");

router.get("/get", activityPlantController.getAll);
router.get("/getdata", activityPlantController.getAllData);
router.post("/", activityPlantController.create);
router.put("/:id", activityPlantController.update);
router.delete("/:id", activityPlantController.delete);

module.exports = router;
