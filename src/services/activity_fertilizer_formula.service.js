const activityFertilizerFormulaRepository = require("../repositories/activity_fertilizer_formula.repository");

exports.add = async (activity, file) => {
  await activityFertilizerFormulaRepository.add({
    ...activity,
    image: file ? file.filename : "",
  });
};
