-- Create Database
CREATE DATABASE VetoSansFrontieres;

-- Clinics table
CREATE TABLE cliniques (
    cliniqueNum 		INT SERIAL PRIMARY KEY,
    address 			VARCHAR(80) 	NOT NULL, -- Pull this out into its own table
    telephone 			VARCHAR(16) 	NOT NULL,
    telecopier 			VARCHAR(16) 	NOT NULL,
    gestionnaireID 		INT REFERENCES 	employees(employeeId), -- Subject to change
);

-- Create gender domain for employees
CREATE DOMAIN gender CHAR(1) CHECK (value IN ('F', 'M'));

-- Employees table
CREATE TABLE employees(
	employeeId 			INT SERIAL PRIMARY KEY,
	fname 				VARCHAR(255) 	NOT NULL,
	lname 				VARCHAR(255) 	NOT NULL,
	address 			VARCHAR(80) 	NOT NULL, -- Subject to change
	telephone 			VARCHAR(16)		NOT NULL,
	dob 				DATE 			NOT NULL, -- Check documentation
	sexe 				gender,
	nas 				VARCHAR(11)		NOT NULL UNIQUE,
	fonction 			VARCHAR(80) 	NOT NULL,
	salary 				MONEY,
	cliniqueNum			INT REFERENCES cliniques(cliniqueNum),
);

-- Owners table
CREATE TABLE owners(
	ownerNum 			INT SERIAL PRIMARY KEY,
	fName 				VARCHAR(255) 	NOT NULL,
	lName 				VARCHAR(255) 	NOT NULL,
	address 			VARCHAR(80) 	NOT NULL,
	telephone 			VARCHAR(16) 	NOT NULL,
);

-- Create state domain for animals
CREATE DOMAIN state VARCHAR(10) CHECK (value IN ('vivant', 'decede')); -- Make sure this is a fixed value dropdown

-- Animals table
CREATE TABLE animals(
	animalNum 			INT SERIAL PRIMARY KEY,
	name 				VARCHAR(255) 	NOT NULL,
	type 				VARCHAR(255) 	NOT NULL,
	description 		TEXT 			NOT NULL, -- TEXT might be big, can be chagned
	dob 				DATE 			NOT NULL, -- Check documentation
	date_inscription 	DATE 			NOT NULL,
	animale_sate		state 			NOT NULL,
	ownerNum 			INT REFERENCES owners(ownerNum)
);

-- Exams table
CREATE TABLE exams(
	examNo 				INT SERIAL PRIMARY KEY,
	exam_date 			DATE 	NOT NULL, -- Check documentation
	description 		TEXT 	NOT NULL,
	examiner 			INT REFERENCES employees(employeeId),
	animalNo 			INT REFERENCES animals(animalNum),
);

-- Results table
CREATE TABLE results(
	resulsId 			INT SERIAL PRIMARY KEY,
	treatment_quantity 	INT 	NOT NULL,
	start_date			DATE 	NOT NULL,
	end_date 			DATE 	NOT NULL,
	examNo 				INT REFERENCES exams(examNo),
	animalNo 			INT REFERENCES animals(animalNo),
	treatmentNo 		VARCHAR(5) REFERENCES treatments(treatmentNo),
);

-- Treatments table is static and will only be read from. NO INSERTIONS.
CREATE TABLE treatments(
	treatmentNo 		VARCHAR(5) PRIMARY KEY,
	name 				VARCHAR(255) 	NOT NULL,
	price 				INT 			NOT NULL,
);


