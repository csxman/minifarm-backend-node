const caneOwnerService = require("../services/cane_owner.service");

exports.getAll = async (req, res) => res.json(await caneOwnerService.findAll());

exports.create = async (req, res) =>
  res.json(await caneOwnerService.create(req.body));

exports.update = async (req, res) =>
  res.json(await caneOwnerService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await caneOwnerService.delete(req.params.id));
