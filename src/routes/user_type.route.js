const router = require("express").Router();
const userTypeController = require("../controllers/user_type.controller");

router.get("/get", userTypeController.getAll);
router.post("/", userTypeController.create);
router.put("/:id", userTypeController.update);
router.delete("/:id", userTypeController.delete);

module.exports = router;
