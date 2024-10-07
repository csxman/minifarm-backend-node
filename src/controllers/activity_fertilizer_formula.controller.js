const multer = require("multer");
const multerConfig = require("../configs/multer");
const upload = multer(multerConfig.config).single(multerConfig.keyUpload);

const activityFertilizerFormulaService = require("../services/activity_fertilizer_formula.service");

exports.addActivity = (req, res) => {
  upload(req, res, async (error) => {
    if (error) {
      console.log(`error: ${JSON.stringify(error)}`);
      return res.status(500).json({ message: error.message });
    }
    return res
      .status(201)
      .json(await activityFertilizerFormulaService.add(req.body, req.file));
  });
};
