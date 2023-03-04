-- index --
show databases;

create database mukesh;
use mukesh;
create table mukesh_id(
seval_id int not null,
seval_name varchar(20),
seval_jaadi varchar(20),
age int
);

select * from mukesh_id;
desc mukesh_id;
# creating a index for age 
create index index_age
on mukesh_id(age);

create index seval_id_index
on mukesh_id(seval_id);

#droping the index seval_id
alter table mukesh_id drop index seval_id_index;
