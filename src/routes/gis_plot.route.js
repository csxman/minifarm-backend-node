const router = require("express").Router();
const gisPlotController = require("../controllers/gis_plot.controller");

router.get("/get", gisPlotController.getAll);
router.post("/", gisPlotController.create);
router.post("/insertPlot", gisPlotController.insertPlot);

router.get(
  "/getAllMapByExtend/:maxLon/:minLon/:maxLat/:minLat",
  gisPlotController.getAllMapByExtend
);

router.put("/:id", gisPlotController.update);
router.delete("/:id", gisPlotController.delete);

// report
router.get("/getReportAllArea", gisPlotController.getReportAllArea);
router.get("/getDashboard", gisPlotController.getDashboard);
router.get("/getReportPlotDetail/:id", gisPlotController.getReportPlotDetail);

module.exports = router;
