const router = require("express").Router();
const caneActivityController = require("../controllers/cane_activity.controller");

router.get("/get", caneActivityController.getAll);
router.post("/", caneActivityController.create);
router.put("/:id", caneActivityController.update);
router.delete("/:id", caneActivityController.delete);

module.exports = router;
