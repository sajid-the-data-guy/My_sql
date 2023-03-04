#joins project

create database join_project;
use join_project;
show tables;
select * from employee;
manager_id varchar(20)
);
show tables;
insert employee(emp_id, emp_name, salary, dept_id, manager_id)values
('E1','Rahul',15000,'D1','M1'),
('E2','Manoj',15000 ,'D1','M1'),
('E3','James',55000 ,'D2','M2'),
('E4','Michael',25000 ,'D2','M2'),
('E5','Ali', 20000,'D10','M3'),
('E6','Robin', 35000,'D10','M3');

#creating 2nd table 
create table department(
dept_id varchar(20),
dept_name varchar(50)
);

insert department(dept_id,dept_name) values
('D1','IT'),
('D2','HR'),
('D3','Finance'),
('D4','Admin');
select * from manager;


#creating 3rd table
create table manager(
manager_id varchar(20),
manager_name varchar(50),
dept_id varchar(20)
);

insert manager(manager_id,manager_name,dept_id) values
('M1','prem','D3'),
('D2','shripadh','D4'),
('D3','nick','D1'),
('D4','cory','D1');

#creating 4th table
create table projects(
project_id varchar(20),
project_name varchar(100),
team_member_id varchar(20)
);

insert projects(project_id,project_name,team_member_id) values
('P1','Data Migration','E1'),
('P1','Data Migration','E2'),
('P1','Data Migration','M3'),
('P2','ETL Tool','E1'),
('P2','ETL Tool','M4');

create table company(
company_id varchar(20),
company_name varchar(100),
location varchar(20)
);

insert company(company_id,company_name,location) values
('coo1','techtfq_solution','tamil_nadu');


-- fecting  the employee name and the department name they belong to--


select * from employee;
select * from department;
select * from manager;
select * from projects;

#inner join
#inner join = join both are same
select e.emp_name, d.dept_name
from employee as e inner join department as d on e.dept_id = d.dept_id;
#left join
#left join and left outer join is same
select e.emp_name, d.dept_name
from employee as e left join department as d on e.dept_id = d.dept_id;

#RIGHT JOIN
#right join and right outer join is same 
select e.emp_name, d.dept_name
from employee as e right join department as d on e.dept_id = d.dept_id;

#full join = inner join + right join + left join
# full join and full outer join is same
select e.emp_name, d.dept_name
from employee as e full join department as d on d.dept_id = e.dept_id;


#cross join is used to attach the info to column to the table
select e.emp_name, d.dept_name
from employee as e cross join department as d;

-- fect the employee name and department name.--
-- also make company name and company location to each employee
select * from company;
select e.emp_name, d.dept_name, c.company_name, c.location
from employee as e inner join department as d 
cross join company c;

-- self join --
# self join is used to join in the table info in 1 table
create table family(
member_id varchar(20),
name varchar(50),
age int,
parent_id varchar(20)
);

insert family(member_id,name,age,parent_id) values
('F1','david',4,'F5'),
('F2','carol',10,'F5'),
('F3','michael',12,'F5'),
('F4','johnson',36,null),
('F5','maryam',40,'F6'),
('F6','stewart',70,null),
('F7','rohan',6,'F4'),
('F8','Asha',8,'F4');

select * from family;

#slef join
select child.name as child_name,
child.age as child_age,
parent.name as parent_name,
parent.age as parent_age
from family as child
join family as parent on child.parent_id = parent.member_id 
