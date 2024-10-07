const imagesRepository = require("../repositories/images.repository");
const imagesQRepository = require("../repositories/images_q.repository");

exports.findAll = async () => await imagesRepository.findAll();

exports.create = async (data) => await imagesRepository.create(data);

exports.update = async (id, data) => await imagesRepository.update(id, data);

exports.delete = async (id) => await imagesRepository.delete(id);

exports.add = async (data, file) => {
  const result = await imagesRepository.add({
    ...data,
    image: file ? file.filename : "",
  });

  if (result) {
    return await imagesQRepository.findOneImage();
  }
  return null;
};

exports.findOneImage = async () => await imagesQRepository.findOneImage();
