const customerService = require("../services/customer.service");

exports.getAll = async (req, res) => res.json(await customerService.findAll());

exports.getAllCustomerList = async (req, res) =>
  res.json(await customerService.findAllCustomerList());

exports.create = async (req, res) =>
  res.json(await customerService.create(req.body));

exports.addCustomer = async (req, res) => {
  // console.log("addCustomer:" + JSON.stringify(req.body));

  const resp = await customerService.findLastTop1();
  // console.log(JSON.stringify(resp.cust_account));

  const myArray = resp.cust_account.split("D");
  let genId = myArray[1];
  let plusId = parseInt(genId) + 1;
  let newId = "D" + plusId;
  // console.log(plusId);
  // console.log(newId);
  req.body.cust_account = newId;
  // res.json(await customerService.create(req.body));
  try {
    res.status(201).json(await customerService.create(req.body));
  } catch (error) {
    res.json({ message: error.message });
    return;
  }
};

exports.update = async (req, res) => {
  // res.json(await customerService.update(req.params.id, req.body));

  try {
    res.status(200).json(await customerService.update(req.params.id, req.body));
  } catch (error) {
    res.json({ message: error.message });
    return;
  }
};

exports.delete = async (req, res) =>
  res.json(await customerService.delete(req.params.id));
