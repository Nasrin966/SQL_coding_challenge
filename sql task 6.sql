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

SELECT * FROM BOOKS;