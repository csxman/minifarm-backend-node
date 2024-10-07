const gisPlotService = require("../services/gis_plot.service");

exports.getAll = async (req, res) => res.json(await gisPlotService.findAll());

exports.getReportAllArea = async (req, res) =>
  res.json(await gisPlotService.findReportAllArea());

exports.getDashboard = async (req, res) =>
  res.json(await gisPlotService.findDashboard());

exports.getReportPlotDetail = async (req, res) =>
  res.json(await gisPlotService.findReportPlotDetail(req.params.id));

exports.create = async (req, res) =>
  res.json(await gisPlotService.create(req.body));

exports.insertPlot = async (req, res) =>
  res.json(await gisPlotService.insertPlot(req.body));

exports.getAllMapByExtend = async (req, res) =>
  res.json(
    await gisPlotService.findAllMapByExtend(
      req.params.maxLon,
      req.params.minLon,
      req.params.maxLat,
      req.params.minLat
    )
  );

exports.update = async (req, res) =>
  res.json(await gisPlotService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await gisPlotService.delete(req.params.id));
