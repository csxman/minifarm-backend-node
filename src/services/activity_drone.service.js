const activityDroneRepository = require("../repositories/activity_drone.repository");

exports.findAll = async () => await activityDroneRepository.findAll();

exports.create = async (data) => await activityDroneRepository.create(data);

exports.update = async (id, data) =>
  await activityDroneRepository.update(id, data);

exports.delete = async (id) => await activityDroneRepository.delete(id);

exports.findAllData = async () => {
  
  var tmp = await activityDroneRepository.findQueryAll();
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
      "drone_type_name": item.drone_type_name,
      "fertilizer_formula_name": item.fertilizer_formula_name,
      "ertilizer_band_name": item.ertilizer_band_name,
      
      "driver_user_name": item.driver_user_name,
      "drone_": item.drone_id,


      "pay_name": item.pay_name,
      "water": item.water,

      
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
