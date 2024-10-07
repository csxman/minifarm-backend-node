const multer = require("multer");
const multerConfig = require("../configs/multer");
const upload = multer(multerConfig.config).single(multerConfig.keyUpload);

const accountService = require("../services/account.service");
const userTypeService = require("../services/user_type.service");

exports.addUserAccount = (req, res) => {
  upload(req, res, async (error) => {
    if (error) {
      console.log(`error: ${JSON.stringify(error)}`);
      return res.status(500).json({ message: error.message });
    }
    return res.status(201).json(await accountService.add(req.body, req.file));
  });
};

exports.updateUserAccount2 = (req, res) => {
  upload(req, res, async (error) => {
    if (error) {
      console.log(`error: ${JSON.stringify(error)}`);
      return res.status(500).json({ message: error.message });
    }
    const result = await accountService.update(
      req.params.id,
      req.body,
      req.file
    );
    if (result) {
      res.json(result);
    } else {
      res.status(404).json({});
    }
  });
};

exports.updateUserAccount = async (req, res) => {
  res.json(await accountService.update_all(req.params.id, req.body));
};

exports.deleteUserAccount = async (req, res) =>
  res.json(await accountService.delete_user_account(req.params.id, req.body));

/**
 * @swagger
 * /account/register:
 *   post:
 *     summary: Create new account
 *     tags: [Account]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/RegisterRequest'
 *     responses:
 *       201:
 *         description: The account was successfully created
 *         content:
 *           application/json:
 *             schema:
 *               $ref: '#/components/schemas/RegisterResponse'
 */
exports.register = async (req, res) =>
  res.status(201).json(await accountService.register(req.body));

/**
 * @swagger
 * /account/login:
 *   post:
 *     summary: Login and response jwt token
 *     tags: [Account]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/LoginRequest'
 *     responses:
 *       200:
 *         description: Login successfully
 *         content:
 *           application/json:
 *             schema:
 *               $ref: '#/components/schemas/LoginResponse'
 *       401:
 *         description: Un Authenticated
 */
exports.login = async (req, res) => {
  const { username, password } = req.body;
  const token = await accountService.login(username, password);
  if (!token) {
    res.status(401).json();
    return;
  }

  const result = await accountService.checkregister(username);
  console.log(JSON.stringify(result));
  const acc_fullname = jsonParser(result, "user_full_name");
  // const role = jsonParser(result, "user_role");
  const company_id = jsonParser(result, "company_id");
  const department_id = jsonParser(result, "department_id");
  // const position_id = jsonParser(result, "position_i_d");
  // const authorize_id = jsonParser(result, "authorize_id");
  const user_id = jsonParser(result, "id");
  // const result2 = await companyService.findById(company_id);
  // const company_name = jsonParser(result2, "company_name");
  // const result3 = await departmentService.findById(department_id);
  // const department_name = jsonParser(result3, "department");
  // const acc_plan = jsonParser(result, "acc_plan");
  // const created_at = jsonParser(result, "created_at");

  const res_role = await userTypeService.findById(
    jsonParser(result, "user_type_id")
  );

  console.log("res_role:", JSON.stringify(res_role));

  const role = res_role.user_type_name;

  res.json({
    user_id,
    username,
    acc_fullname,
    role,
    company_id,
    department_id,
    token,
  });

  //  res.json({
  //    user_id,
  //    username,
  //    acc_fullname,
  //    role,
  //    company_id,
  //    department_id,
  //    position_id,
  //    authorize_id,
  //    token,
  //  });
};

function jsonParser(stringValue, field) {
  var string = JSON.stringify(stringValue);
  var objectValue = JSON.parse(string);
  return objectValue[field];
}

exports.checkregister = async (req, res) => {
  const { username } = req.query;
  console.log(username);
  res.json(await accountService.checkregister(username));
};

/**
 * @swagger
 * /account/info:
 *   get:
 *     summary: Returns info JWT
 *     tags: [Account]
 *     responses:
 *       200:
 *         description: The info JWT
 *         content:
 *           application/json:
 *             schema:
 *                 $ref: '#/components/schemas/InfoResponse'
 *       401:
 *         description: Un Authenticated
 *     security: [{ bearerAuth: [] }]
 */
exports.info = (req, res) => res.json({ username: req.sub, role: req.role });

exports.getTest = async (req, res) => res.json(await accountService.findAll());

exports.getAll = async (req, res) => res.json(await accountService.findAll());

exports.update = async (req, res) =>
  res.json(await accountService.update_pass(req.params.id, req.body));

exports.updateAllNotImageFile = async (req, res) =>
  res.json(await accountService.updateAllNotImageFile(req.params.id, req.body));

exports.delete = async (req, res) =>
  res.json(await accountService.delete_acc(req.params.id));

exports.updateTest = async (req, res) =>
  res.json(await accountService.updateData());

/**
 * @swagger
 * tags:
 *   name: Account
 *   description: Account management API
 */

/**
 * @swagger
 * components:
 *   schemas:
 *     RegisterRequest:
 *        type: object
 *        required:
 *           - username
 *           - password
 *           - role
 *        properties:
 *            username:
 *              type: string
 *              description: The account username
 *            password:
 *              type: string
 *              description: The account password
 *            role:
 *              type: string
 *              description: The account role
 *     RegisterResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: string
 *           description: The auto-generated id of the account
 *         username:
 *           type: string
 *           description: The account username
 *         password:
 *           type: string
 *           description: The account password
 *         role:
 *           type: string
 *           description: The account role
 *         created_at:
 *           type: string
 *           description: The product created
 *         updated_at:
 *           type: string
 *           description: The product updated
 *     LoginRequest:
 *       type: object
 *       required:
 *         - username
 *         - password
 *       properties:
 *         username:
 *           type: string
 *           description: The account username
 *         password:
 *           type: string
 *           description: The account password
 *     LoginResponse:
 *       type: object
 *       properties:
 *         token:
 *           type: string
 *           description: The JWT token
 *     InfoResponse:
 *       type: object
 *       properties:
 *         username:
 *           type: string
 *           description: The account username
 *         role:
 *           type: string
 *           description: The account role
 *       example:
 *         username: iBlurBlur
 *         role: Admin
 */

/**
 * @swagger
 * /account/{id}:
 *   get:
 *     summary: Get the account by id
 *     tags: [Account]
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: number
 *         required: true
 *         description: The account id
 *     responses:
 *       200:
 *         description: The account description by id
 *         content:
 *           application/json:
 *             schema:
 *               $ref: '#/components/schemas/AccountResponse'
 *       404:
 *         description: The account was not found
 *       401:
 *         description: Un Authenticated
 *     security: [{ bearerAuth: [] }]
 */
exports.getFindId = async (req, res) =>
  res.json(await accountService.findId(req.params.id));

exports.getAuthorize = async (req, res) =>
  res.json(
    await accountService.findAuthorize(req.params.id, req.params.router_path)
  );
