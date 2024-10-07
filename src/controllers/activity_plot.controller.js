const activityPlotService = require("../services/activity_plot.service");

exports.getAll = async (req, res) =>
  res.json(await activityPlotService.findAll());

exports.create = async (req, res) =>
  res.json(await activityPlotService.create(req.body));

exports.update = async (req, res) =>
  res.json(await activityPlotService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await activityPlotService.delete(req.params.id));


exports.getAllData = async (req, res) =>
  res.json(await activityPlotService.findAllData()); 