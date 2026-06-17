CREATE TABLE Emp (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(50),
    Department VARCHAR(30),
    Hire_Date DATE
);

INSERT INTO Emp VALUES
(101, 'Anisha', 'IT', '2020-05-15'),
(102, 'Rahul', 'HR', '2018-03-10'),
(103, 'Priya', 'Finance', '2022-08-01'),
(104, 'Karan', 'Marketing', '2019-11-20'),
(105, 'Meena', 'Sales', '2024-01-05');
select * from emp;

---Scenario:
 Calculate employee tenure in years.
Task:
 Use DATE functions like YEAR(), DATEDIFF(), NOW().
Expected Output:
 Employee tenure is calculated correctly---
 select date(hire_date) as date, day(hire_date) as day, month(hire_date) as month from emp;
 select now();
 select datediff(curdate(),hire_date) as days_from_hired from emp;
 select date_add(hire_date, interval 1 month) from emp;
