


CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    Department VARCHAR(30)
);

INSERT INTO Employees VALUES
(101, 'anisha', 'hameedh', 'IT'),
(102, 'RAHUL', 'sharma', 'HR'),
(103, 'Priya', 'KUMAR', 'Finance'),
(104, 'kaRan', 'Singh', 'Marketing'),
(105, 'MEENA', 'patel', 'Sales');


---SQL Question 1: String Functions
Scenario:
 Clean up employee names for reporting.
Task:
 Write queries using UPPER, LOWER, SUBSTRING, CONCAT.
Expected Output:
 Formatted name outputs are displayed.---
 
select * from employees;
select upper(department) from employees;
select *, lower(department) as dept from employees;
select upper(concat(first_name," ",last_name)) as full_name from employees;
select substring('anisha',4,3);
