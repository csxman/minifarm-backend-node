const router = require("express").Router();
const landDLTController = require("../controllers/land_dlt.controller");

router.get("/get", landDLTController.getAll);
router.post("/", landDLTController.create);
router.put("/:id", landDLTController.update);
router.delete("/:id", landDLTController.delete);

module.exports = router;
