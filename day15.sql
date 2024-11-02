create database Telecom_customer;
## what is the average tenure of customer in the database?
select avg(tenure) as result from telecom_churn_dataset;
## what is the distribution of gender in the database?
select gender, count(*) as count from telecom_churn_dataset group by gender;
## how many customers are seniorcitizen?
select count(*) as senior_citizens from telecom_churn_dataset where seniorcitizen = 1;
## what percentage of partners have customers?
select (count(case when partner = 'Yes' then 1 end )*100.0/count(*)) as per_with_partner from telecom_churn_dataset;
## how many customers have dependents?
select count(*) as dependents from telecom_churn_dataset where dependents = 'Yes';
## what is the most common internet service type?
select internetservice, count(*) as count from telecom_churn_dataset group by internetservice order by count desc;
## how many customer have online security and backup?
select count(*) as C_W_S_OB from telecom_churn_dataset where OnlineSecurity = 'Yes' and OnlineBackup = 'Yes';
## what is the average monthly charges of customers?
select avg(MonthlyCharges) as result from telecom_churn_dataset;
## what is the average total charges for customers?
select avg(TotalCharges) as result from telecom_churn_dataset;
## what is the overall churn rate for dataset?