
CREATE OR REPLACE PROCEDURE add_salesperson(first_name VARCHAR, last_name VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN 	
	INSERT INTO salesperson(first_name, last_name)
	VALUES(first_name, last_name);
END;
$$;

CALL add_salesperson('Mickel', 'Wright');
CALL add_salesperson('John', 'Smith');


SELECT*
FROM salesperson;

--PROCEDURE THAT ADDS DATA TO CAR TABLE:
CREATE OR REPLACE PROCEDURE add_car(car_make VARCHAR(50), car_model VARCHAR(50), car_color VARCHAR(50), car_year INT, mileage INT, dealership_purchase BOOL, price NUMERIC(9,2), seller_id INT)
LANGUAGE plpgsql
AS $$
BEGIN 	
	INSERT INTO car(car_make, car_model, car_color, car_year, mileage, dealership_purchase, price, seller_id)
	VALUES(car_make, car_model, car_color, car_year, mileage, dealership_purchase, price, seller_id);
END;
$$;

CALL add_car('HONDA', 'Accord', 'black', 20, 20000, TRUE, 40000.99, 1);
CALL add_car('HONDA', 'Civic', 'grey', 23, 50000, TRUE, 20000.99, 2);
CALL add_car('HONDA', 'Civic', 'grey', 23, 50000, FALSE, 20000.99);
CALL add_car('HONDA', 'Accord', 'black', 20, 20000, FALSE, 40000.99);

SELECT*
FROM car;

--PROCEDURE THAT ADDS DATA TO CUSTOMER TABLE:
CREATE OR REPLACE PROCEDURE add_customer(first_name VARCHAR(50), last_name VARCHAR(50), car_id INT)
LANGUAGE plpgsql
AS $$
BEGIN 	
	INSERT INTO customer(first_name, last_name, car_id)
	VALUES(first_name, last_name, car_id);
END;
$$;

CALL add_customer('Nicole', 'Johnson', 2);
CALL add_customer('Tom', 'Miller', 1);
CALL add_customer('Bobby', 'Dawn', 3);
CALL add_customer('Lilly', 'Popper', 4);

SELECT*
FROM customer;


--PROCEDURE THAT ADDS DATA TO INVOICE TABLE:
CREATE OR REPLACE PROCEDURE add_invoice(date TIMESTAMP, price NUMERIC(9,2), seller_id INT, car_id INT, customer_id 	INT)
LANGUAGE plpgsql
AS $$
BEGIN 	
	INSERT INTO invoice(date, price, seller_id, car_id, customer_id)
	VALUES(date, price, seller_id, car_id, customer_id);
END;
$$;

CALL add_invoice('2023-03-17 5:39:45', 40000.99, 2, 2, 1);
CALL add_invoice('2023-03-18 9:39:45', 20000.99, 1, 1, 3);

SELECT*
FROM invoice;

--PROCEDURE THAT ADDS DATA TO MECHANIC TABLE:
CREATE OR REPLACE PROCEDURE add_mechanic(first_name VARCHAR(50), last_name VARCHAR(50))
LANGUAGE plpgsql
AS $$
BEGIN 	
	INSERT INTO mechanic(first_name, last_name)
	VALUES(first_name, last_name);
END;
$$;

CALL add_mechanic('Greg', 'Williams');
CALL add_mechanic('Will', 'Popper');

SELECT*
FROM mechanic;

--PROCEDURE THAT ADDS DATA TO MECHANIC TABLE:
CREATE OR REPLACE PROCEDURE add_service(date TIMESTAMP, price NUMERIC(9,2), customer_id INT, car_id INT, mechanic_id INT)
LANGUAGE plpgsql
AS $$
BEGIN 	
	INSERT INTO service(date, price, customer_id, car_id, mechanic_id)
	VALUES(date, price, customer_id, car_id, mechanic_id);
END;
$$;

CALL add_service('2023-03-19 08:37:50', 350.99, 4, 3, 1);
CALL add_service('2023-03-12 05:00:50', 120.99, 3, 4, 2);

SELECT*
FROM service;




