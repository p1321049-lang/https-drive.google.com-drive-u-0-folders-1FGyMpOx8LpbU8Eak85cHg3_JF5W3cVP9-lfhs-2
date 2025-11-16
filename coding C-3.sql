create database university;
use university;

create table student_info (
student_id int primary key,
student_name varchar(100),
deparment_name varchar(100),
email_id varchar(100),
course_info varchar(100),
GPA decimal(5,2)
);
alter table student_info change column deparment_name department_name varchar (100);
select * from student_info;
insert into student_info ( student_id , student_name , department_name, email_id, course_info, GPA)
values 
(1, 'John', 'IT', 'john@gmail.com' , 'IT101', 10.08),
(2, 'Peter', 'CSE', 'peter@gmail.com' , 'CSE201', 24.08),
(3, 'Mike', 'ME', 'mike@gmail.com' , 'ME301', 15.08),
(4, 'Betty', 'IT', 'betty@gmail.com' , 'IT102', 9.08),
(5, 'Joe', 'CSE', 'Joe@gmail.com' , 'CSE202', 8.08);

update student_info set email_id = NULL where student_id = 2;

-- return distinct department names --
SELECT DISTINCT department_name FROM student_info;

-- IS NULL & NOT NULL --
SELECT student_name, department_name FROM student_info WHERE email_id IS NULL;
SELECT student_name, department_name FROM student_info WHERE email_id IS NOT NULL;

-- IN, BETWEEN, NOT BETWEEN --
SELECT student_name, email_id FROM Student_info WHERE course_info IN ('IT101', 'ME301', 'IT102');
SELECT student_name, gpa FROM Student_info WHERE gpa BETWEEN 10.08 AND 20.08;
SELECT student_name, gpa FROM Student_info WHERE gpa NOT BETWEEN 15.0 AND 15.10;