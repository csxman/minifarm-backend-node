const router = require("express").Router();
const customerController = require("../controllers/customer.controller");

router.get("/get", customerController.getAll);
router.get("/getAllCustomerList", customerController.getAllCustomerList);
router.post("/", customerController.create);
router.post("/addCustomer", customerController.addCustomer);
router.put("/:id", customerController.update);
router.delete("/:id", customerController.delete);

module.exports = router;
