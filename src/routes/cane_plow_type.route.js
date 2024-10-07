const router = require("express").Router();
const canePlowTypeController = require("../controllers/cane_plow_type.controller");

router.get("/get", canePlowTypeController.getAll);
router.post("/", canePlowTypeController.create);
router.put("/:id", canePlowTypeController.update);
router.delete("/:id", canePlowTypeController.delete);

module.exports = router;
