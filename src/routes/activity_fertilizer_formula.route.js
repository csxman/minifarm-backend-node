const router = require("express").Router();
const activityFertilizerFormulaController = require("../controllers/activity_fertilizer_formula.controller");

router.post("/addActivity", activityFertilizerFormulaController.addActivity);

module.exports = router;
