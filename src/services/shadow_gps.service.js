const shadowGpsRepository = require("../repositories/shadow_gps.repository");

exports.findAll = async () => await shadowGpsRepository.findAll();

exports.findBoxAll = async () => await shadowGpsRepository.getBoxAll();

exports.create = async (data) => {
    const timeElapsed = Date.now();
    const today = new Date(timeElapsed);
    var responseData = {
        response_code: 1,
        received_data: 1, 
        send_time: today.toISOString()
    }

    // data.data.forEach(item=>{
    //     const contents = await shadowGpsRepository.createAndUpdate(item);
    // })

    for (let item of data.data){
        await shadowGpsRepository.createAndUpdate(item);
    }
     
    return responseData
}
  

exports.update = async (id, data) =>
  await shadowGpsRepository.update(id, data);

exports.delete = async (id) => await shadowGpsRepository.delete(id);
