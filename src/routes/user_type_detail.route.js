const router = require("express").Router();
const userTypeDetailController = require("../controllers/user_type_detail.controller");

router.get("/get", userTypeDetailController.getAll);
router.post("/", userTypeDetailController.create);
router.put("/:id", userTypeDetailController.update);
router.delete("/:id", userTypeDetailController.delete);

module.exports = router;
