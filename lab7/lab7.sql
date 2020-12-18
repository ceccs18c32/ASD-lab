# To Create a Table store. With Fields order no, code, item, quantity, price, discount, mrp
CREATE TABLE Store 
(
    `order_no` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `item` VARCHAR(20) NOT NULL,
    `quantity` INTEGER UNSIGNED NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT(0),
    `mrp` DECIMAL(6, 2) NOT NULL
);

#Insert values into the table 
INSERT INTO Store (`item`, `quantity`, `discount`, `mrp`)
VALUES ('Shin Guard', 2, 0, 600), ('Head Band', 1, 0, 100);

#Display the table 
SELECT * FROM Store;

#Write an SQL query to display the reminder, if the amount of an each item in store is divided by 9.
SELECT MOD(`mrp`, 9) FROM Store;

#Write SQL query to display the amount in store and its square
SELECT `mrp`, POWER(`mrp`, 2) FROM Store;

#Write SQL query to divide the amount in stock of each item by 7 in store table and display the result round to the nearest integer.
SELECT ROUND(`mrp` / 7, 0) FROM Store;