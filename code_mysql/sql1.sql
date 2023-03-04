#day_1 mysql
/*
1.sql create database
2.sql drop database 
3.sql create table
4. sql insert into table
5. sql drop table
*/

show databases;

#use world;
#show tables;
#select * from countrylanguage
#1.create database
create database maaldar;
#we can use database by using use statement 
use maaldar;
#creating table inside the database
create table maaldar_id(id integer,name varchar(20),fees integer);

#selecting the table to view the table which we have created in the database.
select * from maaldar_id;
#inserting values in table 
insert maaldar_id(id,name,fees) values(1,'sajid',2000);

insert maaldar_id(id,name,fees) values(2,'farhan',3999);
insert maaldar_id(id,name,fees) values(3,'safdar',333339);
#deleting the table which we have created in the database
drop table maaldar_id;
show tables;
#deleting the database
drop database maaldar;
show databases