const router = require("express").Router();
const harvestCarcutController = require("../controllers/harvest_carcut.controller");

router.get("/get", harvestCarcutController.getAll);
router.post("/", harvestCarcutController.create);
router.put("/:id", harvestCarcutController.update);
router.delete("/:id", harvestCarcutController.delete);

module.exports = router;
