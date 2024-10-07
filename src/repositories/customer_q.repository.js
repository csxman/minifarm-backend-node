const db = require("../db/db");

exports.findAllCustomerList = async () =>
  await db.ExecDataNoIndex(
    `SELECT Customer.id As id,
    Customer.cust_account As cust_account,
    Customer.name As name,
    CAST(Customer.company_id AS int) As company_id,
    Company.name As company_name,
    Customer.address As address,
    Customer.provice As provice,
    Customer.zipcode As zipcode,
    Customer.tel As tel,
    Customer.contact As contact,
    Customer.taxid As taxid,
    Customer.branch As branch,
    Customer.payment_term As payment_term,
    Customer.status,
    CASE
        WHEN Customer.status = 'A' THEN 'Active'
        ELSE 'Inactive'
    END as status_name,
    Customer.inserted_at As inserted_at 
    FROM Customer 
    left join Company 
    on Customer.company_id = Company.id`
  );

exports.findAllCustomerListById = async (id) => {
  const res = await db.ExecDataByIndex(
    `SELECT Customer.id As id,
        Customer.cust_account As cust_account,
        Customer.name As name,
        Customer.company_id As company_id,
        Company.name As company_name,
        Customer.address As address,
        Customer.provice As provice,
        Customer.zipcode As zipcode,
        Customer.tel As tel,
        Customer.contact As contact,
        Customer.taxid As taxid,
        Customer.branch As branch,
        Customer.payment_term As payment_term,
        CASE
            WHEN Customer.status = 'A' THEN 'Active'
            ELSE 'Inactive'
        END as status,
        Customer.inserted_at As inserted_at 
        FROM Customer 
        left join Company 
        on Customer.company_id = Company.id
    WHERE Customer.id = ?`,
    id
  );

  return res;
};
