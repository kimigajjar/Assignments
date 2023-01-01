use hr_management;

/*1. Write a query to display the last name and hire date of any employee in the same department as SALES.*/
select employees.first_name,employees.last_name,employees.hire_date from employees inner join departments on employees.department_id = departments.department_id where 
department_name = 'sales';

/*2. Create a query to display the employee numbers and last names of all employees who earn more than the average salary. 
Sort the results in ascending order of salary*/
select employee_id,first_name,last_name from employees where salary > (select avg(salary) from employees) order by salary asc;

/*3. Write a query that displays the employee numbers and Last names of all employees who work in a department with any employee whose 
last name contains a u*/
select employee_id,first_name,last_name from employees where department_id in (select department_id from employees where last_name like '%u%');

/*4. Display the last name, department number, and job ID of all employees whose department Location is 1800.*/
select first_name,last_name, department_id, job_id from employees where department_id in (select department_id from departments where location_id = 1800);

/*S. Display the last name and salary of every employee who reports to king.*/
select last_name, salary from employees where manager_id = (select employee_id from employees where last_name = 'king');

/*6. Display the department number, last name, and job ID for every employee in the marketing department*/
select department_id, last_name, job_id from employees where department_id in (select department_id from departments
 where department_name = 'marketing');
 
/*7. Modify the above query to display the employee numbers, Last names, and salaries of all employees who earn more than the average salary and who work in a 
department with any employee with a' ts' in their name.*/
select employee_id,first_name,last_name from employees where department_id in (select department_id from employees where last_name like '%ts%') 
and salary > (select avg(salary) from employees);

/*8. Display the names of all employees whose job title is the same as anyone in the sales dept.*/
select employees.first_name,employees.last_name from employees inner join jobs on employees.job_id = jobs.job_id 
join departments on departments.department_id = employees.department_id where department_name = 'sales';

/*9. Write a compound query to produce a List of employees showing raise percentages, employee IDs, and salaries. Employees in department 1 and 3 
are given a 5% raise, employees in department 2 are given a 10% raise, employees in departments 4 and 5 are given a 15% raise, and employees 
in department 6 are not given a raise.*/
select employee_id,salary,salary * 0.05 as new_salary from employees where department_id in (1,3) union
select employee_id,salary,salary * 0.1 as new_salary from employees where department_id in (2) union
select employee_id,salary,salary * 0.15 as new_salary from employees where department_id in (4,5) union
select employee_id,salary,salary as new_salary from employees where department_id in (6);

/*10. Write a query to display the top three earners in the EMPLOYEES table. Display their Last names and salaries.*/
select first_name,last_name,salary from employees  order by Salary desc limit 3;

/*11. Display the names of all employees with their salary and commission earned. Employees with a null commission should have 0 in 
the commission column*/
select first_name,last_name,salary,commission_earned ,if(commission_earned is null,0,commission_earned) as updated_commission from employees;

/*12. Display the Managers (name) with top three salaries along with their salaries and department information.*/
select manager_id from employees  order by Salary desc limit 3;
