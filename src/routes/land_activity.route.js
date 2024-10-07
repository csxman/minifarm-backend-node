const router = require("express").Router();
const landActivityController = require("../controllers/land_activity.controller");

router.get("/get", landActivityController.getAll);
router.post("/", landActivityController.create);
router.put("/:id", landActivityController.update);
router.delete("/:id", landActivityController.delete);

module.exports = router;
