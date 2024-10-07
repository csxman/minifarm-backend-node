const router = require("express").Router();
const WaterFertilizerTypeController = require("../controllers/water_fertilizer_type.controller");

router.get("/get", WaterFertilizerTypeController.getAll);
router.post("/", WaterFertilizerTypeController.create);
router.put("/:id", WaterFertilizerTypeController.update);
router.delete("/:id", WaterFertilizerTypeController.delete);

module.exports = router;
