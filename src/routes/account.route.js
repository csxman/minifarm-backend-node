const router = require("express").Router();
const accountController = require("../controllers/account.controller");
const jwt = require("../configs/jwt");

router.post("/addUserAccount", accountController.addUserAccount);
router.put("/updateUserAccount/:id", accountController.updateUserAccount);
router.put("/deleteUserAccount/:id", accountController.updateUserAccount);

router.post("/register", accountController.register);
router.post("/login", accountController.login);
router.get("/info", jwt.verifyToken, accountController.info);
router.get("/checkregister", accountController.checkregister);

router.get("/get", accountController.getAll);
router.put("/:id", accountController.update);
router.put(
  "/updateAllNotImageFile/:id",
  accountController.updateAllNotImageFile
);
router.delete("/:id", accountController.delete);

router.get("/gettest", accountController.getTest);
router.get("/updatetest", accountController.updateTest);

router.get("/:id", accountController.getFindId);
router.get("/getAuthorize/:id/:router_path", accountController.getAuthorize);

module.exports = router;
