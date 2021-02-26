CREATE OR REPLACE PROCEDURE add_vehicle (_make VARCHAR(15),_model VARCHAR(15),_price NUMERIC(10,2),_vehicle_year INT,_used BOOLEAN,_sold BOOLEAN)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO vehicle(make, model, price, vehicle_year, used, sold)
	VALUES(_make, _model, _price, _vehicle_year, _used, _sold);
END;
$$

SELECT *
FROM vehicle;

CALL add_vehicle ('Hyundai', 'accent', 8000, 2010, TRUE, FALSE);
CALL add_vehicle ('Jeep', 'Grand_Cherokee', 12000, 2000, FALSE, FALSE);
CALL add_vehicle ('Tesla', 'Cybertruck', 50000, 2021, False, FALSE);
CALL add_vehicle ('Mazda', '626', 2000, 1993, TRUE, TRUE);

CREATE OR REPLACE PROCEDURE add_sales_person (_first_name VARCHAR(25),_last_name VARCHAR(25))
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO sales_person (first_name,last_name)
	VALUES(_first_name,_last_name);
END;
$$

Call add_sales_person ('Antonio', 'Johnson');
Call add_sales_person ('Carmen', 'Johnson');
Call add_sales_person ('Desire', 'Thompson');
Call add_sales_person ('Josh', 'Duford');

SELECT *
FROM sales_person;

INSERT INTO customer (first_name,last_name,phone)
VALUES('Larry','Ostimer','(123) 342-5555');

INSERT INTO customer (first_name,last_name,phone)
VALUES('Kathy','Jackson','(321) 357-5555');

INSERT INTO mechanic (first_name,last_name)
VALUES('Hunter','Jackson');

INSERT INTO mechanic (first_name,last_name)
VALUES('Terry','Jackson');

INSERT INTO parts (part_name,price)
VALUES('Photon Torpedos','8');

INSERT INTO parts (part_name,price)
VALUES('Tires','40');

INSERT INTO services (amount,task)
VALUES('40','Set Phasers to stun');

INSERT INTO services (amount,task)
VALUES('6','Crank the drive shaft');

INSERT INTO services (amount,task)
VALUES('0','None');

INSERT INTO sale (amount,loan_sale)
VALUES('10000','600');

INSERT INTO sale (amount,loan_sale)
VALUES('70000','1200');

INSERT INTO sale (amount,loan_sale)
VALUES('0','0');

INSERT INTO invoice (sales_person_id,sale_id,service_id,date)
VALUES('1','2','3','2/26/21');

INSERT INTO invoice (sales_person_id,sale_id,service_id,date)
VALUES('3','1','3','2/24/21');

INSERT INTO mechanic_services (mech_staff_id,service_id)
VALUES('1','1');

INSERT INTO mechanic_services (mech_staff_id,service_id)
VALUES('2','2');




