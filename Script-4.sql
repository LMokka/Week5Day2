
--Create Customer table
CREATE TABLE customer(
	-- column_name DATATYPE <CONSTRAINTS>,
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(100),
	email VARCHAR(50),
	loyalty_member BOOLEAN);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100),
	movie_rating VARCHAR(50),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id));
	
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	final_price NUMERIC(5,2),
	movie_time TIME,
	list_price NUMERIC(5,2),
	senior_discount BOOLEAN,
	student_discount BOOLEAN,
	loyalty_discount BOOLEAN,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id));

