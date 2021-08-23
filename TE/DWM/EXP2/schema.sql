-- 
-- Star Schema Design
--
CREATE DATABASE dwm_exp2_star;

CREATE TABLE `sales` (
    time_id INT,
    item_id INT,
    location_id INT,
    branch_id INT,
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    total_items_sold INT,
    total_sale_amt INT,
    total_discount INT,
    CONSTRAINT FK_SalesTime FOREIGN KEY (`time_id`) REFERENCES `time`(`time_id`),
    CONSTRAINT FK_SalesItem FOREIGN KEY (`item_id`) REFERENCES `item`(`item_id`),
    CONSTRAINT FK_SalesLocation FOREIGN KEY (`location_id`) REFERENCES `location`(`location_id`),
    CONSTRAINT FK_SalesBranch FOREIGN KEY (`branch_id`) REFERENCES `branch`(`branch_id`)
);

CREATE TABLE `time` (
    time_id INT PRIMARY KEY AUTO_INCREMENT, 
    day INT, 
    month INT, 
    year INT, 
    quarter TINYINT
);

CREATE TABLE `item` (
    item_id INT PRIMARY KEY AUTO_INCREMENT, 
    brand VARCHAR(50), 
    name VARCHAR(50), 
    category VARCHAR(50), 
    price INT, 
    discounted_price INT
);

CREATE TABLE `location` (
    location_id INT PRIMARY KEY AUTO_INCREMENT, 
    country VARCHAR(50), 
    state VARCHAR(50), 
    city VARCHAR(50), 
    district VARCHAR(50)
);

CREATE TABLE `branch` (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100), 
    address VARCHAR(100)
);

-- 
-- Snowflake Schema Design
--
CREATE DATABASE dwm_exp2_snowflake;

CREATE TABLE `sales` (
    time_id INT,
    item_id INT,
    location_id INT,
    branch_id INT,
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    total_items_sold INT,
    total_sale_amt INT,
    total_discount INT,
    CONSTRAINT FK_SalesTime FOREIGN KEY (`time_id`) REFERENCES `time`(`time_id`),
    CONSTRAINT FK_SalesItem FOREIGN KEY (`item_id`) REFERENCES `item`(`item_id`),
    CONSTRAINT FK_SalesLocation FOREIGN KEY (`location_id`) REFERENCES `location`(`location_id`),
    CONSTRAINT FK_SalesBranch FOREIGN KEY (`branch_id`) REFERENCES `branch`(`branch_id`)
);

CREATE TABLE `time` (
    time_id INT PRIMARY KEY AUTO_INCREMENT, 
    day INT, 
    month INT, 
    year INT, 
    quarter TINYINT
);

CREATE TABLE `brand` (
    brand_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE `category` (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    code INT
);

CREATE TABLE `item` (
    item_id INT PRIMARY KEY AUTO_INCREMENT, 
    brand_id INT, 
    name VARCHAR(50), 
    category_id INT, 
    price INT, 
    discounted_price INT,
    CONSTRAINT FK_ItemCategory FOREIGN KEY (`category_id`) REFERENCES `category`(`category_id`),
    CONSTRAINT FK_ItemBrand FOREIGN KEY (`brand_id`) REFERENCES `brand`(`brand_id`)

);

CREATE TABLE `country` (
    country_id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(50),
    code INT
);

CREATE TABLE `location` (
    location_id INT PRIMARY KEY AUTO_INCREMENT, 
    country_id INT, 
    state VARCHAR(50), 
    city VARCHAR(50), 
    district VARCHAR(50),
    CONSTRAINT FK_LocationCountry FOREIGN KEY (`country_id`) REFERENCES `country`(`country_id`)

);

CREATE TABLE `branch` (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    name INT, 
    address VARCHAR(100)
);


