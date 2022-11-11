/* NOT NULL COLUMN CANNOT BE LEFT EMPTY*/

CREATE TABLE COMPANIES (
    company_id 		VARCHAR(255),
    company_name 	VARCHAR(255) NOT NULL,
    headquarters_phone_number VARCHAR(255),
    PRIMARY KEY (company_id)
);

ALTER TABLE COMPANIES
MODIFY company_name VARCHAR(255) NULL;

ALTER TABLE COMPANIES
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;

ALTER TABLE COMPANIES
CHANGE COLUMN company_id company_id INT AUTO_INCREMENT;

INSERT INTO COMPANIES (headquarters_phone_number, company_name)
VALUES ('01068220791', 'Company A');

SELECT 
    *
FROM
    COMPANIES;

ALTER TABLE COMPANIES
MODIFY headquarters_phone_number VARCHAR(255) NULL;

ALTER TABLE COMPANIES
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NOT NULL;


