const router = require("express").Router();
const positionController = require("../controllers/position.controller");

router.get("/:id", positionController.getAll);

module.exports = router;