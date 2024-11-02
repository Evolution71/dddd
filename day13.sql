create database MJ_HOSPITAL_SYSTEM;
drop database MJ_HOSPITAL_SYSTEM;
create database MJ_HOSPITAL_SYSTEM;
use MJ_HOSPITAL_SYSTEM;
create table patient_information_one(PID int primary key not null,PName varchar(255) not null, PGender varchar(10) not null,PAddress text not null);
show columns from patient_information_one;
alter table patient_information_one add column PEmail text not null;
show columns from patient_information_one;
alter table patient_information_one add column PODB date not null after PGender;
show columns from patient_information_one;
alter table patient_information_one add column ID int not null first;
show columns from patient_information_one;
## dropping column
alter table patient_information_one drop column ID;
show columns from patient_information_one;
## MODIFY (WE USE TO CHANGE EITHER THE DATA TYPE OR THE CONSTRAINT)
alter table patient_information_one modify column PName text not null;
show columns from patient_information_one;
alter table patient_information_one change column PName PFULLName text not null;
show columns from patient_information_one;
alter table patient_information_one rename to patient_info_part_one;
## dropping table
## drop table patient_info_part_one;
## insert,update,select,delete
select * from patient_info_part_one;
insert into patient_info_part_one(PID,PFULLName,PGender,PODB,PAddress,PEmail) values
(1,'Ezuma Festus','Male','1997-05-25','no 3 doctor house ado','ecvb@gmail.com'),
(2,'Nancy Toruosei','Female','1998-05-25','no 3 Airport Road','nancy@gmail.com'),
(3,'Nnaka Chalrse','Male','1992-05-20','no 1 Nnamdi Azikiwe Road','nnamdi@gmail.com'),
(4,'John Camberlin','Male','2000-02-17','no 3 doctor house ado','john@gmail.com'),
(5,'Ezuma Juliana','Female','1992-05-12','no 4 Michael Okpara Road','juliana@gmail.com'),
(6,'Ezuma Chiamaka','Female','1994-09-11','no 3 Amokwe Achara Uturu','amaka@gmail.com'),
(7,'Okpara Bridget','Female','1997-05-25','no 3 doctor house ado','bridget@gmail.com');
select * from patient_info_part_one;
update patient_info_part_one set PODB = '1989-02-12' where PID = 2;
delete from patient_info_part_one where PID = 7;
select * from patient_info_part_one;