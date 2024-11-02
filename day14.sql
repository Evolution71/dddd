create database earlycode_system;
use earlycode_system;
select * from student_performance_data;
## mysql
select school,age,reason from student_performance_data;
select school,age,reason from student_performance_data where age = 17;
select * from student_performance_data order by age;
select * from student_performance_data order by age desc;
## select school,age,reason from student_performance_data group by age;
select age,sum(age) from student_performance_data group by age;
select age,min(age) from student_performance_data group by age;
select age,max(age) from student_performance_data group by age;
select age,count(age) from student_performance_data group by age;
select age,avg(age) from student_performance_data group by age;
## mysql conditions
select age,school,reason,traveltime from student_performance_data where traveltime >=2 and age >=19;
select age,school,reason,traveltime from student_performance_data where traveltime >=2 or age >=19;
select age,school,reason,traveltime from student_performance_data where (traveltime >=2 or age >=19) and (reason = 'home');
select age,school,reason,traveltime from student_performance_data where reason in ('home','course');
select age,school,reason,traveltime from student_performance_data where traveltime between 0 and 2;
select age,school,reason,traveltime from student_performance_data where traveltime is null;
select age,school,reason,traveltime from student_performance_data where traveltime is not null;
select age,school,reason,traveltime,Mjob from student_performance_data where Mjob like 'T%';
select age,school,reason,traveltime,Mjob from student_performance_data where Mjob like '%n';
select age,school,reason,traveltime,Mjob from student_performance_data where Mjob like '_____';
select age,school,reason,traveltime,Mjob from student_performance_data where Mjob like '__s';
select distinct reason from student_performance_data;
select age,school,reason,traveltime,Mjob,Total_Gp,if (Total_GP >=30 ,'pass','fail') as result from student_performance_data;
select age,school,reason,traveltime,Mjob,Total_Gp,ifnull (Total_GP ,reason) as result from student_performance_data;
select age,school,reason,traveltime,Mjob,Total_Gp,G1,G2,nullif (G1,G2) as result from student_performance_data;
select age,school,reason,traveltime,Mjob,Total_GP,
  case reason
  when 'course' then 1
  when 'other' then 2
  when 'home' then 3
  else 4
  end as result from student_performance_data;
  create table Reason_modified select age,school,traveltime,Mjob,Total_GP,
  case reason
     when 'course' then 1
     when 'other' then 2
     when 'home' then 3
     else 4
     end as result from student_performance_data;
 select * from Reason_modified;    
