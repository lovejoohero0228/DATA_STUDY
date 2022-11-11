USE SALES;

DROP TABLE CUSTOMERS;

CREATE TABLE CUSTOMERS
(
	customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);

ALTER TABLE CUSTOMERS
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

ALTER TABLE CUSTOMERS
ADD COLUMN gender ENUM('M','F') AFTER last_name;

INSERT INTO CUSTOMERS(first_name, last_name, gender)
VALUES ("Peter",'Figaro','M');

SELECT * FROM CUSTOMERS;

ALTER TABLE CUSTOMERS
ALTER COLUMN number_of_complaints DROP DEFAULT;


CREATE TABLE COMPANIES
(
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number INT(12),
PRIMARY KEY(company_id),
UNIQUE KEY(headquarters_phone_number)
);

ALTER TABLE COMPANIES
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255);

DROP TABLE COMPANIES;