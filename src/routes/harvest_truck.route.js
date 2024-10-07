const router = require("express").Router();
const harvestTruckController = require("../controllers/harvest_truck.controller");

router.get("/get", harvestTruckController.getAll);
router.post("/", harvestTruckController.create);
router.put("/:id", harvestTruckController.update);
router.delete("/:id", harvestTruckController.delete);

module.exports = router;
