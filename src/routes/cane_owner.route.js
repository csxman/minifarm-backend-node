const router = require("express").Router();
const caneOwnerController = require("../controllers/cane_owner.controller");

router.get("/get", caneOwnerController.getAll);
router.post("/", caneOwnerController.create);
router.put("/:id", caneOwnerController.update);
router.delete("/:id", caneOwnerController.delete);

module.exports = router;
