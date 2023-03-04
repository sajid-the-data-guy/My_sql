#sql constrain
#1.Not null
#2.unique
#3.primary key
#4.foreign key
#5.check
#6.default
#7.index

create database student;
use student;
create table student_id(
# not null means it cant be have null values in the id column
id int not null,
first_name varchar(20) not null,
last_name varchar(25) not null,
age int

);
select * from student_id;
#desc is used to view the constrain in the table 
desc student_id;
#modifing the table value which is not null
alter table student_id modify age int not null;

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
unique(id)
);

#desc is used to view the constrain 
desc person;
#inserting the values 
insert into person values(2,'sajid2','abbas',22);
select * from person;

#altering the first name of the table value which should be unique
alter table person Add unique(first_name);

#adding multiple constrain in the table 
alter table person add constraint uc_person unique(age,first_name);

#drop a unique constrain 
alter table person drop index uc_person; 

-- primary key --
create table person1(
id int not null,
first_name varchar(20) not null,
last_name varchar(20),
age int,
#adding multiple or more than multiple keys for table
constraint pk_person primary key(id,last_name)	
);
show tables;
desc person1;
alter table person1 add constraint unique(first_name);
#drop the constraint
alter table person1 drop primary key;

#adding multiple key using alter table 
alter table person1 add constraint pk_1 primary key(id,age);
SHOW DATABASES;

#droping the primary key from the table
alter table person1 drop primary key; 
show tables;

-- foreing key --
create table empoleey(
id int not null,
first_name varchar(20),
second_name varchar(20),
age int,
salary int,
primary key (id)
 
);
show tables;

create table department(
id int not null,
department_id int not null,
department_name varchar(20) not null,
constraint em_dp foreign key (id) references empoleey(id)

);

desc department;

-- check constraint --

create table man(
id int not null,
first_name varchar(20),
second_name varchar(20),
age int, 
salary int,
check(salary <50000)

);
desc man;
insert into man values(2,'sajid','abbas',29,44000);
show tables;


-- default constraint --
create table party(
name_mem varchar(20) not null,
id int not null,
#default is used to spcify the location
city_name varchar(25) default 'bangalore'
);
desc party;



