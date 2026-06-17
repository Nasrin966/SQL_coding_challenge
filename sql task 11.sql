
 
CREATE TABLE Current_Employees (
    Employee_ID INT,
    Employee_Name VARCHAR(50),
    Department VARCHAR(30)
);

INSERT INTO Current_Employees VALUES
(101, 'Anisha', 'IT'),
(102, 'Rahul', 'HR'),
(103, 'Priya', 'Finance'),
(104, 'Karan', 'IT'),
(105, 'Meena', 'Marketing');

CREATE TABLE Past_Employees (
    Employee_ID INT,
    Employee_Name VARCHAR(50),
    Department VARCHAR(30)
);

INSERT INTO Past_Employees VALUES
(103, 'Priya', 'Finance'),
(104, 'Karan', 'IT'),
(106, 'Arun', 'Sales'),
(107, 'Divya', 'HR'),
(108, 'Vijay', 'Marketing');


---Scenario:
 Combine lists of current and past employees.
Task:
 Write queries demonstrating UNION and UNION ALL.
Expected Output:
 UNION removes duplicates, UNION ALL keeps all rows.---
 
 select * from Current_Employees;
 select * from past_Employees;
 select employee_id,employee_name from Current_Employees where department='finance'
 union
  select employee_id,employee_name from past_Employees where department='it'
  
 --union all--
 select employee_id,employee_name from Current_Employees where department='it'
 union all
  select employee_id,employee_name from past_Employees where department='it';