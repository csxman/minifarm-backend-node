const router = require("express").Router();
const caneSprayTypeController = require("../controllers/cane_spray_type.controller");

router.get("/get", caneSprayTypeController.getAll);
router.post("/", caneSprayTypeController.create);
router.put("/:id", caneSprayTypeController.update);
router.delete("/:id", caneSprayTypeController.delete);

module.exports = router;
