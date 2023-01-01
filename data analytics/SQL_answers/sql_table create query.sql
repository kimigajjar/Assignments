create database HR_management;
use hr_management;
create table regions(region_id int,region_name varchar(25),primary key(region_id));
create table countries(country_id char(5),country_name varchar(40),region_id int,primary key(country_id));
create table locations(location_id int,street_address varchar(40),postal_code varchar(12),city varchar(30),state_province varchar(25),
country_id char(5),primary key(location_id));
create table jobs(job_id  int,job_title varchar(35),min_salary decimal(8,2),max_salary decimal(8,2),primary key(job_id));
create table departments(department_id int,department_name varchar(30),location_id int,primary key(department_id));
create table employees(employee_id int,first_name varchar(20),last_name varchar(25),email varchar(100),phone_number varchar(20),
hire_date date,job_id int,salary decimal(8,2),manager_id int,department_id int,primary key(employee_id));
create table dependents(dependent_id int,first_name varchar(50),last_name varchar(50),relationship varchar(25),employee_id int,
primary key(dependent_id));