const activityLeaveRepository = require("../repositories/activity_leaves.repository");

exports.findAll = async () => await activityLeaveRepository.findAll();

exports.create = async (data) => await activityLeaveRepository.create(data);

exports.update = async (id, data) =>
  await activityLeaveRepository.update(id, data);

exports.delete = async (id) => await activityLeaveRepository.delete(id);

exports.findAllData = async () => {
  
  var tmp = await activityLeaveRepository.findQueryAll();
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
      
      
      "driver_user_name": item.driver_user_name,
      "leave_user_name": item.harvest_carcut_name,

      "pay_name": item.pay_name,
 
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