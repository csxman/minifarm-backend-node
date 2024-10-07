const router = require("express").Router();
const shadowGpsController = require("../controllers/shadow_gps.controller");

router.get("/get", shadowGpsController.getAll);
router.get("/getbox", shadowGpsController.getBoxAll);
router.post("/", shadowGpsController.create);
router.put("/:id", shadowGpsController.update);
router.delete("/:id", shadowGpsController.delete);

module.exports = router;
