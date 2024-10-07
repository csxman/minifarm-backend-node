const gisPlotRepository = require("../repositories/gis_plot.repository");
const gisPlotRepositoryQ = require("../repositories/gis_plot_q.repository");

exports.findAll = async () => await gisPlotRepository.findAll();

exports.findDashboard = async () => await gisPlotRepositoryQ.findDashboard();

exports.findReportAllArea = async () =>
  await gisPlotRepositoryQ.findReportAllArea();

exports.findReportPlotDetail = async (id) =>
  await gisPlotRepositoryQ.findReportPlotDetail(id);

exports.create = async (data) => await gisPlotRepository.create(data);

exports.insertPlot = async (data) => await gisPlotRepositoryQ.insertPlot(data);

exports.findAllMapByExtend = async (maxLon, minLon, maxLat, minLat) =>
  await gisPlotRepositoryQ.findAllMapByExtend(maxLon, minLon, maxLat, minLat);

exports.update = async (id, data) => await gisPlotRepository.update(id, data);

exports.delete = async (id) => await gisPlotRepository.delete(id);
