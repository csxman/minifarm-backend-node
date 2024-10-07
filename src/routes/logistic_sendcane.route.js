const router = require("express").Router();
const logisticSendcaneController = require("../controllers/logistic_sendcane.controller");

router.get("/get", logisticSendcaneController.getAll);
router.get("/getdetail", logisticSendcaneController.getAllCustom);
router.get("/getdetail/:id", logisticSendcaneController.getCustomById);
router.post("/", logisticSendcaneController.create);
router.put("/:id", logisticSendcaneController.update);
router.delete("/:id", logisticSendcaneController.delete);

module.exports = router;
