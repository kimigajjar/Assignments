use hr_management;

/*1. Write a query to display the last name, department number, department name for all employees.*/
select employees.first_name,employees.last_name,departments.department_id,departments.department_name from employees inner join departments on employees.department_id
=departments.department_id;

/*2. Create a unique list of all jobs that are in department 4. Include the location of the department in the output.*/
select distinct job_id, location_id from employees, departments where employees.department_id = departments.department_id and
employees.department_id = 4;

/*3. Write a query to display the employee last name,department name ,location id and city of all employees who earn commission.*/
select e.first_name,e.last_name, d.department_name, d.location_id, l.city from employees e, departments d, locations l where e.department_id = d.department_id
and d.location_id = l.location_id and e.commission_earned > 0;

/*4. Display the employee last name and department name of all employees who have an 'a' in their last name*/
select employees.last_name,departments.department_name from employees inner join departments on employees.department_id = departments.department_id
where last_name like '%a%';

/*5. Write a query to display the last name ,job,department number and department name for all employees who work in TORONTO.*/
select employees.first_name,employees.last_name,employees.job_id,employees.department_id,departments.department_name from employees join departments 
on employees.department_id=departments.department_id join locations on departments.location_id=locations.location_id where locations.city = 'toronto';

/*6. Display the employee last name and employee number along with their manager's last name and manager number.*/
select employee_id,first_name,last_name,manager_id from employees;

/*8. Create a query that displays employees last name ,department number,and all the employees who work in the same department as a given 
employee.*/
select employees.first_name,employees.last_name,employees.department_id from employees inner join departments on 
employees.department_id= departments.department_id ;

/*9. Create a query that displays the name ,job,department name ,salary,grade for all employees.
Derive grade based on salary(>=50000=A, >=30000=6,<30000=C)*/


/*10. Display the names and hire date for all employees who were hired before their managers along withe their manager names and hire date. 
Label the columns as Employee name , emp_hire_date,manager name,man_hire_date*/