const activityRipperService = require("../services/activity_ripper.service");

exports.getAll = async (req, res) => res.json(await activityRipperService.findAll());

exports.create = async (req, res) =>
  res.json(await activityRipperService.create(req.body));

exports.update = async (req, res) =>
  res.json(await activityRipperService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await activityRipperService.delete(req.params.id));
