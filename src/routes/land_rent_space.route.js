const router = require("express").Router();
const landRentSpaceController = require("../controllers/land_rent_space.controller");

router.get("/get", landRentSpaceController.getAll);
router.post("/", landRentSpaceController.create);
router.put("/:id", landRentSpaceController.update);
router.delete("/:id", landRentSpaceController.delete);

module.exports = router;
