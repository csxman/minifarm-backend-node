const router = require("express").Router();
const fertilizerFormulaController = require("../controllers/fertilizer_formula.controller");

router.get("/get", fertilizerFormulaController.getAll);
router.post("/", fertilizerFormulaController.create);
router.put("/:id", fertilizerFormulaController.update);
router.delete("/:id", fertilizerFormulaController.delete);

module.exports = router;
