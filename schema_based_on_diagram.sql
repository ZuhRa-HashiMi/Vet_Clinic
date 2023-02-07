-- create patients table 
CREATE TABLE patients(
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name varchar(255),
	date_of_birth DATE
);

-- create medical_hitories table
CREATE TABLE medical_histories(
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	admitted_at TIME,
	patient_id INT ,
	status varchar(255),
    FOREIGN KEY (patient_id) REFERENCES patients(id)
);