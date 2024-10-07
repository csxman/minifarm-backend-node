const activityCanecutService = require("../services/activity_canecut.service");

exports.getAll = async (req, res) =>
  res.json(await activityCanecutService.findAll());

exports.create = async (req, res) =>
  res.json(await activityCanecutService.create(req.body));

exports.update = async (req, res) =>
  res.json(await activityCanecutService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await activityCanecutService.delete(req.params.id));

exports.getAllData = async (req, res) =>
  res.json(await activityCanecutService.findAllData());