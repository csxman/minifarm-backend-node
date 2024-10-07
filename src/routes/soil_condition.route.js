const router = require("express").Router();
const soilConditionController = require("../controllers/soil_condition.controller");

router.get("/get", soilConditionController.getAll);
router.post("/", soilConditionController.create);
router.put("/:id", soilConditionController.update);
router.delete("/:id", soilConditionController.delete);

module.exports = router;
