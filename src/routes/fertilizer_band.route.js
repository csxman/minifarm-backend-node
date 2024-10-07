const router = require("express").Router();
const fertilizerBandController = require("../controllers/fertilizer_band.controller");

router.get("/get", fertilizerBandController.getAll);
router.post("/", fertilizerBandController.create);
router.put("/:id", fertilizerBandController.update);
router.delete("/:id", fertilizerBandController.delete);

module.exports = router;
