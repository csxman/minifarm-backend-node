const router = require("express").Router();
const menuDetailController = require("../controllers/menu_detail.controller");

router.get("/get", menuDetailController.getAll);
router.get("/getalldgm", menuDetailController.getAllDetailGroupMenu);
router.post("/", menuDetailController.create);
router.put("/:id", menuDetailController.update);
router.delete("/:id", menuDetailController.delete);

module.exports = router;
