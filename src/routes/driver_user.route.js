const router = require("express").Router();
const driverUserController = require("../controllers/driver_user.controller");

router.get("/get", driverUserController.getAll);
router.get("/getById/:user_id", driverUserController.getById);
router.post("/", driverUserController.create);
router.put("/:id", driverUserController.update);
router.delete("/:id", driverUserController.delete);

module.exports = router;
