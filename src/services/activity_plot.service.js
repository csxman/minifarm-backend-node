const activityPlotRepository = require("../repositories/activity_plot.repository");

exports.findAll = async () => await activityPlotRepository.findAll();

exports.create = async (data) => await activityPlotRepository.create(data);

exports.update = async (id, data) =>
  await activityPlotRepository.update(id, data);

exports.delete = async (id) => await activityPlotRepository.delete(id);

exports.findAllData = async () => {
  
  var tmp = await activityPlotRepository.findQueryAll();
  var return_data = []
  tmp.forEach(item => {
    var data = {
      "id": item.id,
      "plot_key": item.plot_key,
      "plot_no": item.plot_no,
      "plot_area": item.plot_area,
      "quota_id": item.quota_id,
      "quota_name": item.farmer_pre+item.farmer_name+" "+item.farmer_lname,

      "act_name": item.act_name,

      "driver_user_name": item.harvest_carcut_name,


      "image": item.image,
      "desc,": item.desc,
      "user_created": item.user_full_name,
      "created_at": item.created_at,
    }
    return_data.push(data) 
    
  });
  return return_data;
}