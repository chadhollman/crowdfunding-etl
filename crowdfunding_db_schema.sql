DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;

CREATE TABLE contacts
(
    contact_id INT PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(320)	
   	
);

CREATE TABLE category
(
    category_id VARCHAR(5) PRIMARY KEY,
    category VARCHAR(20) NOT NULL
);

CREATE TABLE subcategory
(
    subcategory_id VARCHAR(8) PRIMARY KEY,
    subcategory VARCHAR(20) NOT NULL
);

CREATE TABLE campaign
(
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
	company_name VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(10) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(5) NOT NULL,
    subcategory_id VARCHAR(8) NOT NULL,
    CONSTRAINT fk_contact FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category(category_id),
    CONSTRAINT fk_subcategory FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT *
FROM contacts;
SELECT *
FROM category;
SELECT *
FROM subcategory;
SELECT *
FROM campaign;