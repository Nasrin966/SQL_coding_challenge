---SQL Question 1: PRIMARY KEY & FOREIGN KEY
Scenario:
 You are creating a database for an online bookstore.
Task:
 Define a primary key for Books(BookID) and a foreign key in Orders(BookID) referencing Books.---
 
 create database online_bookstore;
 use online_bookstore;
create table Books(
BookID int primary key
);
create table Orders(
orders varchar(30),
BookID int,
foreign key (BookID) REFERENCES Books(BookID)
);

---SQL Question 2: UNIQUE Constraint
Scenario:
 Each book must have a unique ISBN.
Task:
 Add a UNIQUE constraint to the ISBN column in Books.
Expected Output:
 ISBN values are enforced as unique.----
 
 alter table books
 add column ISBN varchar (30) unique;
 
 
 

SELECT * FROM BOOKS;