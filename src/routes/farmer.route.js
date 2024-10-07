const router = require("express").Router();
const farmerController = require("../controllers/farmer.controller");

router.get("/get", farmerController.getAll);
router.post("/", farmerController.create);
router.put("/:id", farmerController.update);
router.delete("/:id", farmerController.delete);

module.exports = router;
