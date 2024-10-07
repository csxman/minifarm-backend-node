const accountRepository = require("../repositories/account.repository");
const account2Repository = require("../repositories/account2.repository");
const bcrypt = require("bcryptjs");
const jwt = require("../configs/jwt");

exports.add = async (account, file) => {
  account.password = await bcrypt.hash(account.password, 8);
  await accountRepository.add({
    ...account,
    image: file ? file.filename : "",
  });
};

exports.update_all = async (id, account) => {
  await accountRepository.update(id, account);
};

exports.update_pass = async (id, account) => {
  account.password = await bcrypt.hash(account.password, 8);
  await accountRepository.update(id, account);
};

exports.updateAllNotImageFile = async (id, account) => {
  await accountRepository.update(id, account);
};

exports.update = async (id, account, file) => {
  const result = await accountRepository.findById(id);
  if (result) {
    const updated = await accountRepository.update(result.id, {
      ...account,
      image: file ? file.filename : result.image,
    });
    if (updated) {
      return await accountRepository.findById(id);
    }
  }
  return null;
};

exports.register = async (account) => {
  account.password = await bcrypt.hash(account.password, 8);
  return await accountRepository.add(account);
};

exports.login = async (username, password) => {
  const result = await accountRepository.findByUsername(username);
  console.log("login : ", JSON.stringify(result));
  if (result && (await bcrypt.compare(password, result.password))) {
    console.log("login user_role : ", result.user_role);

    const payload = {
      sub: result.username,
      role: result.user_role,
      addtional: "todo",
    };
    return jwt.generateToken(payload);
  }
  return "";
};

exports.update_acc = async (id, data) =>
  await accountRepository.update(id, data);

exports.delete_acc = async (id) => await accountRepository.delete(id);

exports.delete_user_account = async (id, data) =>
  await accountRepository.delete_by_id(id, data);

exports.checkregister = async (username) =>
  await accountRepository.findByUsername(username);

exports.findAll = async () => await account2Repository.findAllUser();

exports.updateData = async () =>
  await account2Repository.testMysqlFindAllByIndex();

exports.findId = async (id) => await account2Repository.FindUserById(id);

exports.findAuthorize = async (id, router_path) =>
  await account2Repository.findAuthorize(id, router_path);
