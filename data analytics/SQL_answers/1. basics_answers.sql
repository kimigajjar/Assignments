use hr_management;
/*1. display all information in the tables EMP and DEPT*/

select * from employees;
select * from departments;

/*3. display the employee name concatenated with job id separeted by comma and space and name the column employee and title*/

select concat_ws(", ",job_id,first_name,last_name) as title from employees;

/*4. display hiredate ,name and department number for all clerks.*/

select first_name,last_name,department_id from employees ;

/*5. create a query to display all the data from yhe employee table. seplarate each column by comma and name the column the_output.*/

select concat_ws(",",employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) as THE_OUTPUT
from employees;

/*6.display the names and salary of all employeeswith a salary greater than 2000,*/

select first_name,last_name,salary from employees where salary > 2000;

/*7. display the names and date of employee with the column headers "Name" and "Start Date".*/

select first_name as name,hire_date as Start_Date from employees;

/*8. display names and hire dates of all employess in the order they were hired.*/

select first_name,hire_date from employees order by hire_date;

/*9. display the names and salaries of all employees in reverse salary order.*/

select first_name,last_name,salary from employees order by salary DESC;

/*10. display ename and dept number who all are earned commissions and display salary in reverse order.*/

select first_name,last_name,department_id,salary from employees where commission_earned > 0 order by salary DESC;

/*11. display the last name and job title of all employees who do not have manager.*/

select employees.first_name, employees.last_name from employees left join jobs on employees.job_id = jobs.job_id
 where employees.manager_id is null;

/*12. display the last nmae ,job and salary for all employees whose job is sales reprenstative or stock clerk and whose salary 
is not equal to $2500 ,$3500 or $5000.*/

select first_name,last_name,job_id,salary from employees where job_id in(select job_id from jobs where job_title = 'sales representative'
 or job_title = 'stock clerk') and salary not in(2500,3500,5000)


