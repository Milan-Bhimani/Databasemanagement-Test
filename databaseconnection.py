import mysql.connector

config = {
    'user': 'root',
    'password': '1234',
    'host': 'localhost',
    'auth_plugin': 'mysql_native_password',
    'database':'testdatabase'

}

conn = mysql.connector.connect(**config)

cursor= conn.cursor()

create_queary="""
create table employee(
  id int AUTO_INCREMENT primary key,
  name varchar(50) not null,
  email varchar(20) not null,
  address varchar(100) not null)
  """

insert_query="""
insert into employee 
values('6','Digvijay','83@gmail.com','Ahemdabad')
"""

create_department="""
create table department(
id int auto_increment primary key,
d_name varchar(50) not null,
department_no int
)
"""
insert_department="""
insert into department
values('7','Student council','700')
"""
query_inner_join="""
select * 
from employee as e  
inner join department as d 
on e.id=d.id
"""

query_left_join="""
select * 
from employee as e  
left join department as d 
on e.id=d.id
"""
query_right_join="""
select * 
from employee as e  
right join department as d 
on e.id=d.id
"""
query_cross_join="""
select * 
from employee
cross join department 
"""
print("Inner Join-->")
cursor.execute(query_inner_join)

rows=cursor.fetchall()

for i in rows:
    print(i)
print()
print("Left Join-->")
cursor.execute(query_left_join)

left_rows=cursor.fetchall()

for i in left_rows:
    print(i)
print()
print("Right Join-->")
cursor.execute(query_right_join)

right_rows=cursor.fetchall()

for i in right_rows:
    print(i)
print()
print("Cross Join-->")
cursor.execute(query_cross_join)

cross_rows=cursor.fetchall()

for i in cross_rows:
    print(i)
