
 
 CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    City VARCHAR(30)
);

INSERT INTO Customer VALUES
(1,'Anisha','Chennai'),
(2,'Rahul','Mumbai'),
(3,'Priya','Bangalore'),
(4,'Karan','Delhi'),
(5,'Meena','Hyderabad');
CREATE TABLE Products_in (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2)
);

INSERT INTO Products_in VALUES
(101,'Laptop','Electronics',75000),
(102,'Mobile','Electronics',30000),
(103,'Headphones','Accessories',2500),
(104,'Chair','Furniture',5000),
(105,'Printer','Electronics',12000);
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

INSERT INTO Orders VALUES
(1001,1,'2025-01-10'),
(1002,2,'2025-01-12'),
(1003,1,'2025-02-01'),
(1004,3,'2025-02-15'),
(1005,4,'2025-03-01');
CREATE TABLE Order_Details (
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    PRIMARY KEY (Order_ID, Product_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

INSERT INTO Order_Details VALUES
(1001,101,1),
(1001,103,2),
(1002,102,1),
(1003,105,1),
(1004,104,3),
(1005,103,2);

select * from customer;
select * from products_in;
select * from orders;

---Display customer names and their order IDs.---

select c.customer_name,o.order_id from customer as c
inner join orders as o
on c.customer_id=o.customer_id;

---Display all customers and their orders (including customers without orders).---

select c.*,o.* from customer as c
left join orders as o
on c.customer_id=o.customer_id;

---. Display order details with customer names.---
select o.*,customer_name from orders as o
right join customer as c
on o.customer_id=c.customer_id;

---Display customer name, product name, and quantity purchased.---
select c.customer_name,o.* from customer as c
join orders as o
on c.customer_id=o.customer_id;