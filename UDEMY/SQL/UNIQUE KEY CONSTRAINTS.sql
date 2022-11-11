USE SALES;

CREATE TABLE CUSTOMERS (
    customer_id 	INT,
    first_name 		VARCHAR(255),
    last_name 		VARCHAR(255),
    email_address 	VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id),
    UNIQUE KEY (email_address)
);

DROP TABLE CUSTOMERS;

CREATE TABLE CUSTOMERS (
    customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);

ALTER TABLE CUSTOMERS
ADD UNIQUE KEY (email_address);

ALTER TABLE CUSTOMERS
DROP INDEX email_address; /* NO PARENTHESIS*/


DROP TABLE CUSTOMERS;

CREATE TABLE CUSTOMERS (
    customer_id 	INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);

ALTER TABLE CUSTOMERS
ADD COLUMN gender ENUM('M','F') AFTER last_name;

INSERT INTO CUSTOMERS (first_name, last_name, gender,
email_address, number_of_complaints)
VALUES ('John','Mackinley','M','john.mckinley@365careers.com', 0);
