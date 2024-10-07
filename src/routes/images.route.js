const router = require("express").Router();
const imagesController = require("../controllers/images.controller");

router.get("/get", imagesController.getAll);
router.post("/", imagesController.create);
router.put("/:id", imagesController.update);
router.delete("/:id", imagesController.delete);

router.post("/addAllImages", imagesController.addAllImages);

module.exports = router;
