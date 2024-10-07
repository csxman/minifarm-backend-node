const router = require("express").Router();
const caneCropyearController = require("../controllers/cane_cropyear.controller");

router.get("/get", caneCropyearController.getAll);
router.post("/", caneCropyearController.create);
router.put("/:id", caneCropyearController.update);
router.delete("/:id", caneCropyearController.delete);

module.exports = router;
