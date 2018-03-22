-- Create Database


-- Clinics table
CREATE TABLE cliniques (
    cliniqueNum int NOT NULL,
    address varchar(80), -- Pull this out into its own table
    telephone varchar(16),
    telecopier varchar(16),
    gestionnaireID varchar(8) REFERENCES employees(employeeID), -- Subject to change
    PRIMARY KEY(cliniqueNum)
);

-- Create gender domain for employees
CREATE DOMAIN gender CHAR(1) CHECK (value IN ('F', 'M'));

-- Employees table
CREATE TABLE employees(
	employeeID int NOT NULL,
	fname varchar(255),
	lname varchar(255),
	address varchar(80), -- Subject to change
	telephone varchar(16),
	dob date, -- Check documentation
	sexe gender,
	nas varchar(11),
	fonction varchar (80),
	salary int,
	PRIMARY KEY (employeeID)
);

-- Owners table
CREATE TABLE owners(
	ownerNum int NOT NULL,
	fName varchar(255),
	lName varchar(255),
	address varchar(80),
	telephone varchar(16),
	PRIMARY KEY (ownerNum)
);

-- Create state domain for animals
CREATE DOMAIN state varchar(10) CHECK (value IN ('vivant', 'decede'));

-- Animals table
CREATE TABLE animals(
	animalNum int NOT NULL,
	name varchar(255),
	type varchar(255),
	description TEXT, -- TEXT might be big, can be chagned
	dob date, -- Check documentation
	dateInscription date,
	animaleEtat state,
	owner int REFERENCES owners(ownerNum)
);

-- Exams table
CREATE TABLE exams(

);


