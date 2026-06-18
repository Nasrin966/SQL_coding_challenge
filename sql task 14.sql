create database emton;
use emton;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    ExperienceYears INT
);

INSERT INTO Employees VALUES
(1, 'John', 'IT', 75000, 5),
(2, 'Emma', 'HR', 45000, 2),
(3, 'David', 'Finance', 60000, 4),
(4, 'Sophia', 'IT', 90000, 8),
(5, 'Michael', 'Marketing', 35000, 1),
(6, 'Olivia', 'HR', NULL, 3),
(7, 'James', 'Finance', 50000, NULL),
(8, 'Ava', NULL, 70000, 6);

select employeeid,employeename,department,salary,if(salary>60000,'high salary','normal salary')as salary_category from employees;

select *,
case
when salary>30000 then 'low salary'
when salary>50000 then 'medium salary'
when salary>70000 then 'high salary'
else 'very high salary'
end as salary_type
from employees;
