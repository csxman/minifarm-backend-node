const router = require("express").Router();
const caneCutedTypeController = require("../controllers/cane_cuted_type.controller");

router.get("/get", caneCutedTypeController.getAll);
router.post("/", caneCutedTypeController.create);
router.put("/:id", caneCutedTypeController.update);
router.delete("/:id", caneCutedTypeController.delete);

module.exports = router;
