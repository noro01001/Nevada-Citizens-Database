--f-i:
DROP TABLE Address;
DROP TABLE Citizen;
DROP TABLE Job;
DROP TABLE Tax;

CREATE TABLE Address (
	Address varchar(255),
	Type varchar(255),
	City varchar(255),
	Zip int,
	County varchar(255)
);

CREATE TABLE Citizen (
	FirstName varchar(255),
	LastName varchar(255),
	SSID int,
	Address varchar(255),
	Phone int
);

CREATE TABLE Job (
	SSID int,
	EmploymentStatus varchar(255),
	Company varchar(255),
	Position(255),
	Salary int,
	TIN int
);

CREATE TABLE Tax (
	TIN int,
	TaxesDue float(25, 2),
	TaxesOverdue float(25, 2),
	DateDue varchar(255),
	TaxpayerStatus varchar(255)
);

INSERT INTO Address (Address, Type, City, Zip, County)
VALUES ('11 Rock Lane', 'House', 'Henderson', '89015', 'Clark County'),
;

INSERT INTO Citizen (FirstName, LastName, SSID, Address, Phone)
VALUES ('John', 'Richards', '123456789', '11 Rock Lane', '1234567890'),
('Sarah', 'Jacobson', '234567890', '341 Slate Drive', '3456789012'),
('Jeff', 'Bachard', '56783920', '987 Boulder Lane', '3894610386'),
('Jennifer', 'Kim', '95803465', '9840 Garden Boulevard', '9380678298');

INSERT INTO Job (SSID, EmploymentStatus, Company, Position, Salary, TIN)
VALUES ('123456789', 'Employed', 'IMB INC.', 'Software Developer', '59000', '3456789'),
('234567890', 'Employed', 'Jefferson Enterprise', 'Shift Manager', '38000', '29845764'),
('56783920', 'Employed', 'Starbucks', 'Barista', '24000', '293843497'),
('95803465', 'Employed', 'Amazon Inc.', 'IT Engineer', '52000', '948293874');

INSERT INTO Tax (TIN, TaxesDue, TaxesOverdue, DateDue, TaxpayerStatus)
VALUES ('3456789', '12000', '0', 'April 20', 'Good Standing'),
('29845764', '7000', '478', 'April 20', 'Outstanding Balance'),
('293843497', '0', '34900', 'April 20', 'Outstanding Balance'),
('948293874', '1200', '0', 'April 20', 'Good Standing');

SELECT *
FROM Address,
Citizen,
Job,
Tax;

CREATE VIEW NevadaCitizen AS
SELECT *
FROM Address,
Citizen,
Job,
Tax;

--4:
-- I would use a remote data server architecture. The data in this database will
-- be entered by the government and thus would not need any client interaction in
-- terms of changing the data. A remote server would be the best architecture to
-- use for this database.