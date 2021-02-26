CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	phone VARCHAR(15)
);

CREATE TABLE sales_person(
	sales_person_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25)
);

CREATE TABLE parts(
	part_id SERIAL PRIMARY KEY,
	part_name VARCHAR(25),
	price NUMERIC(4,2)
);

CREATE TABLE mechanic(
	mech_staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25)
);

CREATE TABLE vehicle(
	serial_num SERIAL PRIMARY KEY,
	make VARCHAR(25),
	model VARCHAR(25),
	price NUMERIC(10,2),
	vehicle_year INT,
	used BOOLEAN,
	sold BOOLEAN
);

CREATE TABLE services(
	service_id SERIAL PRIMARY KEY,
	amount NUMERIC(4,2),
	task VARCHAR(25),
	part_id INT,
	FOREIGN KEY (part_id) REFERENCES parts(part_id)
);

CREATE TABLE mechanic_services(
	mech_services_id SERIAL PRIMARY KEY,
	mech_staff_id INT,
	FOREIGN KEY (mech_staff_id) REFERENCES mechanic(mech_staff_id),
	service_id INT,
	FOREIGN KEY (service_id) REFERENCES services(service_id)
)

CREATE TABLE sale(
	sale_id SERIAL PRIMARY KEY,
	amount NUMERIC(8,2),
	loan_sale NUMERIC(8,2),
	serial_num INT,
	FOREIGN KEY (serial_num) REFERENCES vehicle(serial_num)
);

CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	sales_person_id INT,
	FOREIGN KEY (sales_person_id) REFERENCES sales_person(sales_person_id),
	sale_id INT,
	FOREIGN KEY (sale_id) REFERENCES sale(sale_id),
	service_id INT,
	FOREIGN KEY (service_id) REFERENCES services(service_id),
	date TIMESTAMP
);