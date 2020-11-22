use lab;

#Employee Table
CREATE TABLE Employee 
(
	`empid` INT UNSIGNED PRIMARY KEY,
        `first_name` VARCHAR(30) NOT NULL,
        `last_name` VARCHAR(30) NOT NULL,
        `salary` INT UNSIGNED NOT NULL
);

#Employee Details Table 
CREATE TABLE EmployeeDetails 
(
	`empid` INT UNSIGNED,
	`address` LONGTEXT NOT NULL,
  	`phone` VARCHAR(12) NOT NULL,
   	 FOREIGN KEY(`empid`) REFERENCES Employee(`empid`)
);

INSERT INTO Employee (`empid`, `first_name`, `last_name`, `salary`)
VALUES (1, "Vishnu", "Das", 25000),
       (2, "Joe", "Paul", 35000),
       (3, "Shaiju", "Damodhar", 50000);


INSERT INTO EmployeeDetails (`empid`, `address`, `phone`)
VALUES (1, "PhiladelphiaCA", "1451828282"),
       (2, "LA", "3455123188"),
       (3, "NewJerseyBR", "1234856545");

#Details of employee table where empid in employedetails table

SELECT * FROM Employee WHERE `empid` IN ( SELECT `empid` FROM EmployeeDetails );

#The Details of employee table where empid notin employedetails table

SELECT * FROM Employee WHERE `empid` NOT IN ( SELECT `empid` FROM EmployeeDetails );




