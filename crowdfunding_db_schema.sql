CREATE DATABASE crowdfunding_db;

CREATE TABLE category (
    category_id VARCHAR(30) NOT NULL,
    category VARCHAR(30) NOT NULL,
    PRIMARY KEY (category_id));

CREATE TABLE subcategory (
    subcategory_id VARCHAR(30) NOT NULL,
    subcategory VARCHAR(30) NOT NULL,
    PRIMARY KEY (subcategory_id
));
	
CREATE TABLE campaign (
    cf_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal DECIMAL NOT NULL,
	pledged DECIMAL NOT NULL,
	outcome VARCHAR(30) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR(30) NOT NULL,
	currency VARCHAR(30) NOT NULL,
	launched_date DATE,
	end_date DATE,
	category VARCHAR(30) NOT NULL,
	subcategory VARCHAR(30) NOT NULL,
	category_id VARCHAR(30) NOT NULL,
	subcategory_id VARCHAR(30) NOT NULL,
    PRIMARY KEY (contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
	
CREATE TABLE contacts (
    contact_id INTEGER NOT NULL,
	first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL,
    PRIMARY KEY (email),
	FOREIGN KEY (contact_id) REFERENCES campaign(contact_id)
);

SELECT * FROM category;

SELECT * FROM subcatogory;

SELECT * FROM campaign;

SELECT * FROM contacts;
	