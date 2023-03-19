--creating salesperson table
CREATE TABLE salesperson(
	seller_id SERIAL PRIMARY KEY ,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
);

SELECT*
FROM salesperson;

--creating car table
CREATE TABLE car(
	car_id SERIAL PRIMARY KEY,
	car_make VARCHAR(50) NOT NULL,
	car_model VARCHAR(50) NOT NULL,
	car_color VARCHAR(50) NOT NULL,
	car_year INTEGER NOT NULL,
	mileage INTEGER NOT NULL,
	dealership_purchase BOOLEAN,
	price NUMERIC(9,2),
	seller_id INTEGER ,
	FOREIGN KEY(seller_id) REFERENCES salesperson(seller_id)
);

SELECT*
FROM car;

--creating customer table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	car_id INTEGER,
	FOREIGN KEY(car_id) REFERENCES car(car_id)
);

SELECT*
FROM customer;

--creating invoice table
CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	date TIMESTAMP NOT NULL,
	time TIMESTAMP NOT NULL,
	price NUMERIC(9,2) NOT NULL,
	seller_id INTEGER,
	car_id INTEGER,
	customer_id INTEGER,
	FOREIGN KEY(seller_id) REFERENCES salesperson(seller_id),
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

ALTER TABLE invoice 
DROP COLUMN time;

SELECT*
FROM invoice;

--creating mechanic table
CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
);

SELECT*
FROM mechanic;

--creating service table
CREATE TABLE service(
	service_id SERIAL PRIMARY KEY,
	date TIMESTAMP NOT NULL,
	time TIMESTAMP NOT NULL,
	price NUMERIC(9,2) NOT NULL,
	customer_id INTEGER,
	car_id INTEGER,
	mechanic_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);

ALTER TABLE service 
DROP COLUMN time;

SELECT*
FROM service;
