const router = require("express").Router();
const departmentController = require("../controllers/department.controller");

router.get("/:id", departmentController.getAll);

module.exports = router;