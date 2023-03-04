show databases;
create database mysql_project;
use mysql_project;
drop database mysql_project;
#creating tables for employee
create table employee(
id int not null,
first_name varchar(20),
last_name varchar(20),
birth_date date,
sex varchar(1),
salary int,
super_id int,
branch_id int,
primary key(id)
);	
drop table employee;
#creating tables for branch
create table branch(
branch_id int,
branch_name varchar(20),
mgr_id int,
mgr_start_date date,
foreign key(mgr_id) references employee(id) on delete set null
);

SHOW TABLES;
#altering the table constraint 
alter table employee add foreign key(branch_id)
references branch(branch_id)
on delete set null;  



describe branch;
alter table employee add foreign key(super_id) 
references employee(id)
on delete set null;





