-- Create Database
CREATE DATABASE VetoSansFrontieres;

-- Clinics table
CREATE TABLE cliniques (
    cliniqueNum 		INT SERIAL PRIMARY KEY,
    address 			VARCHAR(80), -- Pull this out INTo its own table
    telephone 			VARCHAR(16),
    telecopier 			VARCHAR(16),
    gestionnaireID 		VARCHAR(8) REFERENCES employees(employeeId), -- Subject to change
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
	nas 				VARCHAR(11)		NOT NULL,
	fonction 			VARCHAR(80) 	NOT NULL,
	salary 				REAL,
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
	DATEInscription 	DATE 			NOT NULL,
	animaleEtat 		state 			NOT NULL,
	owner 				INT REFERENCES owners(ownerNum)
);

-- Exams table
CREATE TABLE exams(
	examNo 				INT SERIAL PRIMARY KEY,
	exam_DATE 			DATE 	NOT NULL, -- Check documentation
	description 		TEXT 	NOT NULL,
	examiner 			INT REFERENCES employees(employeeId),
	animalNo 			INT REFERENCES animals(animalNum),
);

-- Results table
CREATE TABLE results(
	resulsId 			INT SERIAL PRIMARY KEY,
	examNo 				REFERENCES exams(examNo),
	animalNo 			REFERENCES animals(animalNo),
	treatmentNo 		REFERENCES treatments(treatmentNo),
	treatment_quantity 	INT 	NOT NULL,
	start_DATE 			DATE 	NOT NULL,
	end_DATE 			DATE 	NOT NULL,
);

-- Treatments table is static and will only be read from. NO INSERTIONS.
CREATE TABLE treatments(
	treatmentNo 		VARCHAR(5) PRIMARY KEY,
	name 				VARCHAR(255) 	NOT NULL,
	price 				INT 			NOT NULL,
);


