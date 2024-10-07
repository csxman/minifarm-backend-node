const router = require("express").Router();
const companyController = require("../controllers/company.controller");

router.get("/:id", companyController.getAll);

module.exports = router;