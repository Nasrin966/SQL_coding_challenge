---SQL Question 1: ORDER BY & LIMIT
Scenario:
 In an e-commerce system, show the top 3 highest-priced products.
Task:
 Write a SQL query using ORDER BY and LIMIT.---
 
 create database product_tab;
 use product_tab;
 CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Category VARCHAR(30),
    Brand VARCHAR(30),
    Price DECIMAL(10,2),
    Stock INT,
    Rating DECIMAL(2,1)
);
INSERT INTO Products (Product_ID, Product_Name, Category, Brand, Price, Stock, Rating) VALUES
(101, 'Laptop Pro X', 'Electronics', 'Dell', 75000, 25, 4.5),
(102, 'Smartphone A1', 'Electronics', 'Samsung', 30000, 50, 4.3),
(103, 'Wireless Mouse', 'Accessories', 'Logitech', 1200, 100, 4.2),
(104, 'Office Chair', 'Furniture', 'IKEA', 8500, 15, 4.1),
(105, 'Gaming Keyboard', 'Accessories', 'HP', 2500, 40, NULL),
(106, 'LED Monitor', 'Electronics', 'LG', 15000, NULL, 4.4),
(107, 'Water Bottle', 'Home & Kitchen', NULL, 500, 200, 3.9),
(108, 'Study Table', 'Furniture', 'IKEA', 12000, 10, 4.0),
(109, 'Air Purifier', 'Electronics', 'Philips', NULL, 18, 4.6),
(110, 'Coffee Maker', 'Home & Kitchen', 'Philips', 3500, 22, 4.2),
(111, 'Bluetooth Speaker', 'Electronics', 'JBL', 4500, 35, 4.5),
(112, 'Notebook Pack', 'Stationery', 'Classmate', 250, 300, NULL),
(113, 'Pen Set', 'Stationery', 'Reynolds', 150, NULL, 3.8),
(114, 'Printer', 'Electronics', 'Canon', 9500, 12, 4.1),
(115, 'Desk Lamp', 'Furniture', 'Philips', 1800, 28, 4.0);
select product_name,price from products
order by price desc
limit 3;

---SQL Question 2: Aggregate Functions
Scenario:
 Management wants statistics of sales data.
Task:
 Write queries using COUNT, SUM, AVG, MAX, MIN on Sales table.---
 
 select count(product_id) as product_count from products;
 select sum(price) as total_price from products;
 select avg(price) as average_price from products;
 select max(price) as highest_price from products;
select min(price) as lowest_price from products;