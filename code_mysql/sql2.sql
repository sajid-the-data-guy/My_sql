#sql null values
#sql update statement
#sql delete statement
#sql alter table 
#add column in existing column
#modify/alter column
#alter table drop column

create database maccha;
show databases;
use maccha;
create table maccha_id(id integer,fn varchar(20),ln varchar(20),gst_amount integer);
#inserting multiple values by using values.
insert maccha_id(id,fn,ln,gst_amount) values
(1,'sajid','abbas',1909),
(2,'sajid1','abbas',1909),
(3,'sajid','abbas',1909),
(4,'sajid','abbas',1909);
#altering the table using the keyword add
alter table maccha_id add primary key(id);
#deleting the details in the id 4 
delete from maccha_id where id=4;
select * from maccha_id;
#updating the values in the row 	
update maccha_id set gst_amount=null where id=4;

alter table maccha_id add balance integer;

alter table maccha_id add card_no integer;
alter table maccha_id add id2 varchar(100);
#deleting the column by using drop
alter table maccha_id drop id2;
