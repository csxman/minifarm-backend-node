const shadowGpsService = require("../services/shadow_gps.service");

exports.getAll = async (req, res) =>
  res.json(await shadowGpsService.findAll());

exports.getBoxAll = async (req, res) =>
  res.json(await shadowGpsService.findBoxAll());

exports.create = async (req, res) => {
    try {
        res.json(await shadowGpsService.create(req.body));
      } catch (error) {
        // handle error here if you want to send on front simply send
        console.log(error)
        res.json(error.message)
      }
}

exports.update = async (req, res) =>
  res.json(await shadowGpsService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await shadowGpsService.delete(req.params.id));