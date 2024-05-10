use demo;

select * from students;

select student_name,id,os_marks+dbms_marks+python_marks+maths_marks as total_marks,"Please focus on your study and work hard " as message from students where os_marks+dbms_marks+python_marks+maths_marks <=330;

select * from students order by grade asc;

select * from students order by grade desc;

desc students;

CREATE VIEW DetailsView AS
SELECT student_name,division
FROM students
WHERE id < 2203;

select * from Detailsview;

alter table students
drop division;

alter table students
add column divison varchar(10);

update students
set divison='cse4b33'
where id=2201;

update students
set divison='cse4b43'
where id=2202;

update students
set divison='cse4b31'
where id=2203;

update students
set divison='cse4b34'
where id=2204;

select * from students;

select sum(os_marks),sum(dbms_marks),sum(python_marks),sum(maths_marks) from students;

create table student_details(student_name varchar(100),id int,email varchar(30),phone_no int,address varchar(150));

insert into student_details values('Milan','2201','1230@gmail.com',123456,'Baroda');

insert into student_details values('Jay','2202','1231@gmail.com',223456,'Rajkot');

insert into student_details values('Suresh','2203','1232@gmail.com',323456,'Ahemdabad');

insert into student_details values('Ram','2204','1233@gmail.com',423456,'Surat');

insert into student_details values('Malav','2205','1234@gmail.com',523456,'Bhavnagar');

insert into student_details values('Vikas','2207','1236@gmail.com',723456,'Jamnagar');

insert into students values('Rahul',2206,59,87,78,77,'B','cse4b35');

insert into students values('Rohan',2208,60,77,58,67,'c','cse4b37');

select * from student_details;

delete from student_details;

select * from students;

select s.student_name,s.id,s.dbms_marks+s.os_marks+s.python_marks+s.maths_marks as total_marks,s.grade,s.divison,sd.student_name,sd.email,sd.address,sd.phone_no from students as s cross join student_details as sd;

select s.student_name,s.id,s.dbms_marks+s.os_marks+s.python_marks+s.maths_marks as total_marks,s.grade,s.divison,sd.student_name,sd.email,sd.address,sd.phone_no from students as s right join student_details as sd on s.id=sd.id;

select s.student_name,s.id,s.dbms_marks+s.os_marks+s.python_marks+s.maths_marks as total_marks,s.grade,s.divison,sd.student_name,sd.email,sd.address,sd.phone_no from students as s inner join student_details as sd on s.id=sd.id;

select s.student_name,s.id,s.dbms_marks+s.os_marks+s.python_marks+s.maths_marks as total_marks,s.grade,s.divison,sd.student_name,sd.email,sd.address,sd.phone_no from students as s left join student_details as sd on s.id=sd.id;