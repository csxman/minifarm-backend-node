const activityAdjustRepository = require("../repositories/activity_adjust.repository");

exports.findAll = async () => await activityAdjustRepository.findAll();

exports.create = async (data) => await activityAdjustRepository.create(data);

exports.update = async (id, data) =>
  await activityAdjustRepository.update(id, data);

exports.delete = async (id) => await activityAdjustRepository.delete(id);

exports.findAllData = async () => {
  
  var tmp = await activityAdjustRepository.findQueryAll();
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
      "pay_name": item.pay_name,
      "driver_name": item.driver_user_name,
      "driver_register": item.register_id,
      "cost_rai": item.plot_cost_per_rai,
      "cost_avg": item.plot_cost_avg,
      "image": item.image,
      "desc,": item.desc,
      "user_created": item.user_full_name,
      "created_at": item.created_at,
    }
    return_data.push(data) 
    
  });
  return return_data;
}