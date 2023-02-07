-- create patients table 
CREATE TABLE patients(
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name varchar(255),
	date_of_birth DATE
);