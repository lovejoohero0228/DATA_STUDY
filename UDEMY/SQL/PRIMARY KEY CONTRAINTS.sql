/* Primary key constraints*/
USE SALES;

DROP TABLE SALES;
DROP TABLE CUSTOMERS;
DROP TABLE ITEMS;
DROP TABLE COMPANIES;

CREATE TABLE SALES
(
	purchase_number INT NOT NULL AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL,
PRIMARY KEY (purchase_number),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);

ALTER TABLE SALES
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

ALTER TABLE SALES
DROP FOREIGN KEY sales_ibfk_2;

CREATE TABLE CUSTOMERS
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints int
);

CREATE TABLE ITEMS
(
	item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10,2),
    company_id VARCHAR(255),
PRIMARY KEY(item_code)
);

CREATE TABLE COMPANIES
(
    company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number INT(12),
PRIMARY KEY(company_id)
);
