const activityCanecutRepository = require("../repositories/activity_canecut.repository");

exports.findAll = async () => await activityCanecutRepository.findAll();

exports.create = async (data) => await activityCanecutRepository.create(data);

exports.update = async (id, data) =>
  await activityCanecutRepository.update(id, data);

exports.delete = async (id) => await activityCanecutRepository.delete(id);

exports.findAllData = async () => {
  
  var tmp = await activityCanecutRepository.findQueryAll();
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
      "type_cut_name": item.cane_type_cut_name,



      "cuted_type_name": item.cane_cuted_type_name,
      "harvest_carcut_name": item.harvest_carcut_name,
      "harvest_truck_license_plate": item.harvest_truck_license_plate,

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
