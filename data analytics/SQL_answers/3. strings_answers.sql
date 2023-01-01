use hr_management;
/* 1. write a query that displays the employees last name only from the string 2-5th position with the first letter capitalized
and all other letter lowercase ,give each column an apparopriate label, */
select last_name,concat(upper(substring(mid(last_name,2,5),1,1)),lower(substring(mid(last_name,2,5),2,3))) as new_last_name_result from employees;

 /* 2. write a query that displays employees first name and last name along with a '-' in between .also dispaly the month in which the employee
 hasjoined. */
 select concat_ws('-',first_name,last_name) as Name,hire_date from employees;
 
 /* 3. write a query to display the employees last name and if half of the salary is grater than ten thousand then increase the 
 salary by 10% else by 11.5% along with the bonus amount 0f 1500 each.provide each colum an appropriate label. */
select first_name,last_name,salary,if((salary/2)>10000,salary*0.1,(salary*0.115)+1500) as updated_salary from employees;

/* 4. display the employee id by appending two zeros after 2nd digit and '-E' in the end . department id , salary and the manager name all in upper case,
if the manager name consists 'z' then replace it with $.  ## synatx insert(string,position ehere to insert,no.of characters to be inserted,dtring tobe inserted)*/
select employee_id,concat(insert(employee_id,3,0,'00'),'-E') as new_employee_id,department_id,salary,manager_id from employees ;

/* 5. write a query that dispalys the employee's last name with the first letter capitalize and all other letters lowercase and the length of the names
for all employees whose name startwith J, A or M .give each column an appropriate label. sort the result by employees last name. */
select first_name,concat(upper(substring(last_name,1,1)),lower(substring(last_name,2))) as last_name,length(first_name) as len_of_name
from employees where first_name like 'J%' or first_name like 'A%' or first_name like 'M%' order by last_name;

/* 6. create a query to disply the last name and salary of all employees .format the salary to be 15 characters long ,left padded with $ .label 
the  column salary. */
select first_name,last_name,salary,lpad(salary,15,'$') as new_salary from employees;

/* 7. display all the employees names if it is a pailndrome. */
 select first_name,last_name,if(first_name = reverse(first_name),'palindrome','not_a_palindrome') as result from employees;
 
/* 8. display firstname of all employees with initcap. */
select concat(upper(substring(first_name,1,1)), lower(substring(first_name,2))) as first_name from employees;

/* 9. from the locations table extract the word betwwen  first and second space from the strret_address column. */
select street_address,substring_index(street_address,' ',2) as new_address from locations;

/* 10. extract the first letter from the first name and append it with last name . also add "@systechusa@gmail.com" at the end.name the column as 
email address.all characters should be in lower case display this along with the first name. */
select first_name,lower(concat(lower(substring(first_name,1,1)),last_name, "@systechusa@gmail.com")) as email_address from employees;

/* 11. display the names and job title of all employees with the same job as trenna. */
select employees.first_name,jobs.job_title from employees inner join jobs on employees.job_id = jobs.job_id where job_title = 'sales manager';

/* 12. display the names and department name of all employees working in the same city as trenna. */
 select employees.first_name,employees.last_name ,departments.department_name from employees inner join departments on employees.department_id = 
 departments.department_id ;
/* 13. dispaly the names of the employees whose salary is the lowest. */

select first_name,last_name,min(salary) from employees; 

/* 14. display the names of all employees except the lowest paid . */
select first_name,last_name,salary from employees where salary not in (2500)
 