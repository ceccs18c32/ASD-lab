USE lab;

#Create a table Employee with following specifications.
Code character (4), name character (10), designation character(30), dob date, salary numeric

CREATE TABLE Employee (
	`code` CHAR(4) NOT NULL,
    `name` CHAR(10) NOT NULL, 
    `designation` CHAR(30) NOT NULL, 
    `dob` DATE NOT NULL,
    `salary` NUMERIC
);

# Insert 2 tuples into the table

INSERT INTO Employee (`code`, `name`, `designation`, `dob`, `salary`)
VALUES 
("e2", "John", "Manager", "1990-4-12", 41250),
("e1","peter", "Sales", "1994-3-22", 18500);

#Select all details from the table

SELECT * FROM Employee;

#Change the salary of employee code is e1

UPDATE Employee
SET `salary` = 20000 WHERE `code` = "e1";

# Delete a tuple from the table employee

DELETE FROM Employee WHERE `code` = "e2";
