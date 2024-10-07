const logisticSendcaneRepository = require("../repositories/logistic_sendcane.repository");

exports.findAll = async () => await logisticSendcaneRepository.findAll();

exports.findAllCustom = async() => {
  
  var tmp = await logisticSendcaneRepository.findAllCustom()
  var return_data = []
  tmp.forEach(item=>{
    var data = {
      "id": item.id,
      "driver_user_id": item.driver_user_id,
      "driver_name": item.user_full_name,
      "plot_no": item.plot_no,
      "plot_area": item.plot_area,
      "farmer_pre": item.farmer_pre,
      "farmer_name": item.farmer_name,
      "farmer_lname": item.farmer_lname,
      "farmer_full_name": item.farmer_pre+" "+item.farmer_name+" "+item.farmer_lname,
      "carcut_name": item.harvest_carcut_name,
      "license_plate": item.harvest_truck_license_plate,
      "truck_status": item.truck_status,
      "truck_tun_driver": item.truck_tun_driver,
      "truck_tun_fac": item.truck_tun_fac,
      "bin_code": item.bin_code,
      "driver_desc": item.driver_desc,
      "driver_image": item.driver_image,
      "bin_image": item.bin_image,
      "date_start": item.date_start,
      "date_fac": item.date_fac,
      "date_end": item.date_end,
      "admin_desc": item.admin_desc,

    }
    return_data.push(data)
  })
  return return_data;
}

exports.findCustomById = async(id) => {
  var tmp = await logisticSendcaneRepository.findCustomById(id)
  var return_data = []
  tmp.forEach(item=>{
    var data = {
      "id": item.id,
      "driver_user_id": item.driver_user_id,
      "driver_name": item.user_full_name,
      "plot_no": item.plot_no,
      "plot_area": item.plot_area,
      "farmer_pre": item.farmer_pre,
      "farmer_name": item.farmer_name,
      "farmer_lname": item.farmer_lname,
      "farmer_full_name": item.farmer_pre+" "+item.farmer_name+" "+item.farmer_lname,
      "carcut_name": item.harvest_carcut_name,
      "license_plate": item.harvest_truck_license_plate,
      "truck_status": item.truck_status,
      "truck_tun_driver": item.truck_tun_driver,
      "truck_tun_fac": item.truck_tun_fac,
      "bin_code": item.bin_code,
      "driver_desc": item.driver_desc,
      "driver_image": item.driver_image,
      "bin_image": item.bin_image,
      "date_start": item.date_start,
      "date_fac": item.date_fac,
      "date_end": item.date_end,
      "admin_desc": item.admin_desc,

    }
    return_data.push(data)
  })
  return return_data;
}

exports.create = async (data) =>
  await logisticSendcaneRepository.create(data);

exports.update = async (id, data) =>
  await logisticSendcaneRepository.update(id, data);

exports.delete = async (id) => await logisticSendcaneRepository.delete(id);
