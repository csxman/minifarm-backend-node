const router = require("express").Router();
const advanceController = require("../controllers/advance.controller");

router.get("/get", advanceController.getAll);
router.post("/insertTrans", advanceController.insertTrans);
router.post("/", advanceController.create);
router.put("/:id", advanceController.update);
router.delete("/:id", advanceController.delete);

module.exports = router;
