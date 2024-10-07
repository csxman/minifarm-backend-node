const router = require("express").Router();
const caneTypeController = require("../controllers/cane_type.controller");

router.get("/get", caneTypeController.getAll);
router.post("/", caneTypeController.create);
router.put("/:id", caneTypeController.update);
router.delete("/:id", caneTypeController.delete);

module.exports = router;
