create database Test;

use test;

create table create table students(id int , student_name varchar (150), email varchar (150),phone_no int,address varchar(150));

insert into university values('1021','Jay','LD');

insert into university values('1022','Shyam','Vishwakarma');

insert into university values('1023','Jyoti','Nirma');

insert into university values('1024','Gaurav','MSU');

insert into university values('1025','Vijaykant','Parul');

create table students(id int , student_name varchar (150), email varchar (150),phone_no int,address varchar(150));

insert into students values('1021','Jay','1230@gmail.com',123456,'Bhavnagar');

insert into students values('1022','Shyam','1231@gmail.com',223456,'Rajkot');

insert into students values('1023','Jyoti','1232@gmail.com',323456,'Jamnagar');

insert into students values('1024','Gaurav','1233@gmail.com',423456,'Vadodra');

insert into students values('1025','Vijaykant','1234@gmail.com',523456,'Ahemdabad');

create table subjects (semester int , subject_name varchar (150));

insert into subjects values(1,'DBMS');

insert into subjects values(1,'Python');

insert into subjects values(1,'DSA');

insert into subjects values(1,'CS');

insert into subjects values(1,'D.M');

insert into subjects values(2,'Java');

insert into subjects values(2,'Coma');

insert into subjects values(2,'OS');

insert into subjects values(2,'Computer Network');

insert into subjects values(2,'PSNM');

select * from subjects;

create table semester(id int ,student_name varchar (150),semester int);

insert into semester values('1021','Jay','1');

insert into semester values('1022','Shyam','1');

insert into semester values('1023','Jyoti','1');

insert into semester values('1024','Gaurav','2');

insert into semester values('1025','Vijaykant','2');

ALTER TABLE result
ADD CONSTRAINT pk_result PRIMARY KEY (result_no,subject_code);


ALTER TABLE subjects
ADD CONSTRAINT fk_subjects_semester FOREIGN KEY (semester)
REFERENCES semester (semester);

alter table university
add column university_index int;

update university
set university_index='5' where id='1025';

alter table subjects
add column subject_code int;

update subjects
set subject_code='205' where subject_name='psnm';

CREATE TABLE result (
    result_no int ,
    id INT,
    semester INT,
    subject_name VARCHAR(150),
    subject_code int,
    marks INT,
    student_name VARCHAR(150),
    university_name VARCHAR(150),
    university_index int,
    INDEX(id),
    primary key(result_no,subject_code),
    FOREIGN KEY (id) REFERENCES students(id),
    FOREIGN KEY (semester) REFERENCES semester(semester),FOREIGN KEY (subject_code) REFERENCES subjects(subject_code)
);

insert into result values(10005,'1025','2','Java','201',78,'Vijaykant','Parul','5');
insert into result values(10005,'1025','2','Coma','202',89,'Vijaykant','Parul','5');
insert into result values(10005,'1025','2','OS','203',82,'Vijaykant','Parul','5');
insert into result values(10005,'1025','2','Computer Netwrok','204',76,'Vijaykant','Parul','5');
insert into result values(10005,'1025','2','PSNM','205',72,'Vijaykant','Parul','5');

select * from result;

select sum(marks) from result where result_no=10001;

select * from result;/*many to one with students,many to one with semester,many to one with subjects,many to one with university*/

select * from students; /*one to many with reuslt,many to one with semester,one to one with university*/

select * from subjects;/*one to many with result,many to one with semester*/

select * from semester;/*one to many with subject,one to many students, one to many with result*/

select * from university;/*one to one with students,one to many with result*/