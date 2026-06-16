create database student;
use student;

CREATE TABLE University (
    University_ID INT PRIMARY KEY,
    University_Name VARCHAR(100),
    Country VARCHAR(50),
    City VARCHAR(50),
    Ranking INT,
    Established_Year INT,
    Student_Count INT
);

INSERT INTO University VALUES
(1, 'MIT', 'USA', 'Cambridge', 1, 1861, 11500),
(2, 'Stanford University', 'USA', 'Stanford', 2, 1885, 17000),
(3, 'Harvard University', 'USA', 'Cambridge', 3, 1636, 23000),
(4, 'University of Oxford', 'UK', 'Oxford', 4, 1096, 26000),
(5, 'University of Cambridge', 'UK', 'Cambridge', 5, 1209, 24000),
(6, 'ETH Zurich', 'Switzerland', 'Zurich', 6, 1855, 22000),
(7, 'National University of Singapore', 'Singapore', 'Singapore', 7, 1905, 38000),
(8, 'University of Toronto', 'Canada', 'Toronto', 8, 1827, 97000),
(9, 'Peking University', 'China', 'Beijing', 9, 1898, 42000),
(10, 'University of Melbourne', 'Australia', 'Melbourne', 10, 1853, 52000);

---SQL Question 1: DISTINCT & WHERE
Scenario:
 In a university database, you want to list unique departments.
Task:
 Write a SQL query to return distinct University names.
Expected Output:
 Only unique Universities are returned.---
 
 select * from University;
 select distinct university_name from University;

CREATE TABLE Universities (
    University_ID INT PRIMARY KEY,
    University_Name VARCHAR(100),
    Country VARCHAR(50),
    City VARCHAR(50),
    Ranking INT,
    Established_Year INT,
    Student_Count INT
);

INSERT INTO Universities VALUES
(1, 'MIT', 'USA', 'Cambridge', 1, 1861, 11500),
(2, 'Stanford University', 'USA', NULL, 2, 1885, 17000),
(3, 'Harvard University', 'USA', 'Cambridge', NULL, 1636, 23000),
(4, 'University of Oxford', 'UK', 'Oxford', 4, NULL, 26000),
(5, 'University of Cambridge', 'UK', 'Cambridge', 5, 1209, NULL),
(6, 'ETH Zurich', 'Switzerland', NULL, 6, 1855, 22000),
(7, 'National University of Singapore', 'Singapore', 'Singapore', 7, NULL, 38000),
(8, 'University of Toronto', NULL, 'Toronto', 8, 1827, 97000),
(9, 'Peking University', 'China', 'Beijing', NULL, 1898, NULL),
(10, 'University of Melbourne', 'Australia', 'Melbourne', 10, 1853, 52000);

---Scenario:
 Some uiversity don’t have country details recorded.
Task:
 Write queries to find universities with NULL and NOT NULL country.---
 
select * from universities where country is null; 
select * from universities where established_year is null;
select * from universities where student_count is not null;


 
 
