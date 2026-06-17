CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Department VARCHAR(30)
);

INSERT INTO Students VALUES
(1, 'Anisha', 'Computer Science'),
(2, 'Rahul', 'Mechanical'),
(3, 'Priya', 'Electronics'),
(4, 'Karan', 'Civil'),
(5, 'Meena', 'IT');
CREATE TABLE Enrollments (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);

INSERT INTO Enrollments VALUES
(1, 1, 101),
(2, 1, 102),
(3, 2, 101),
(4, 3, 103),
(5, 4, 104);
select * from enrollments;
select * from students;
select * from courses;

---join---
select e.enrollment_id,s.student_name,s.department,c.course_name from enrollments as e
join students as s on e.student_id=s.student_id
join courses as c on e.course_id=c.course_id;

--left join---
select s.student_name,s.department,course_name from students as s
left join enrollments as e on s.student_id=e.student_id
join courses as c on c.course_id=e.course_id;

--rightjoin--
select s.*,c.course_name from courses as c
 right join enrollments as e on e.course_id=c.course_id
 join students as s on s.student_id=e.student_id;