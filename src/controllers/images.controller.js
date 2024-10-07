const multer = require("multer");
const multerConfig = require("../configs/multer");
const upload = multer(multerConfig.config).single(multerConfig.keyUpload);

const imagesService = require("../services/images.service");

exports.getAll = async (req, res) => res.json(await imagesService.findAll());

exports.create = async (req, res) =>
  res.json(await imagesService.create(req.body));

exports.update = async (req, res) =>
  res.json(await imagesService.update(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await imagesService.delete(req.params.id));

exports.addAllImages = (req, res) => {
  upload(req, res, async (error) => {
    if (error) {
      console.log(`error: ${JSON.stringify(error)}`);
      return res.status(500).json({ message: error.message });
    }
    return res.status(201).json(await imagesService.add(req.body, req.file));
  });
};
