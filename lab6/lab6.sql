#Table store will be created with fields:
CREATE TABLE Store 
(
    `orderno.` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `code` VARCHAR(20) NOT NULL,
    `item_name` VARCHAR(30) NOT NULL,
    `quantity` INTEGER UNSIGNED DEFAULT 1,
    `price` DECIMAL(10,2) NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT 0,
    `mrp` DECIMAL(10,2) NOT NULL
);


#To insert values to the table
INSERT INTO Store (`code`, `item_name`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("FTBALL", "Football", 1, 200, 0, 200),
       ("CKBALL", "Cricketball", 5, 70, 0, 70);

#To display the table
SELECT * FROM Store;


#To create a view for item_name & quantity for the abv
CREATE VIEW CART AS
SELECT `item_name`, `quantity` FROM Store;

#A query to check for any changes
INSERT INTO Store (`code`, `item_name`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("TPHY", "Trophy", 20, 10000, 0, 10000);

SELECT * FROM CART;

#To delete view
DROP VIEW CART;