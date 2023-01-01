use hr_management;

/* 1. display the maximum,minimum,and average salary and commission earned. */
select min(salary),max(salary),avg(salary),avg(commission_earned) from employees;

/* 2. display the department number,total salary and total commission for each department. */
select department_id,sum(salary),sum(commission_earned) from employees group by department_id;

/* 3. display the department number and number of employees in each department.*/
select department_id as department_number,count(first_name) as no_of_employees_in_each_department from employees
 group by department_id;
 
/* 4. display the department number and total salary of employees in each department. */
select department_id as department_number,sum(salary) as total_salary_of_employee_ineach_department from employees
group by department_id;

/* 5. display the employees names who doesn't earn a commission.order the result set without using the column name. (here 3 is the
commission_earned column ie third coulmn in select query)*/
select first_name,last_name,commission_earned from employees where commission_earned = 0  order by 3;

/* 6. display the employees name,department_id  and commission .if an employeedoesn't earn the commission then display as 'no commission'.
name the column appropriately. */
select first_name,last_name,department_id,commission_earned,if(commission_earned = 0,"NO COMMISSION",commission_earned) 
as result from employees;

/* 7. display the employees name,salary and commission multiplied by 2 .if an employee doesn't earn the commission,then display as 
'no commission'.name the column appropriately. */
select first_name,last_name,salary,commission_earned,if(commission_earned = 0,"NO COMMISSION",commission_earned * 2) 
as updated_commission_earned from employees;

/* 8. display the employees name,department_id who have the first name same as another employee in the same department. */
select first_name,last_name,department_id from employees where first_name in(select first_name from employees having 
count(first_name) > 1) ;

/* 9. display the sum of salaries of the employees working under each manager. */
select sum(salary) from employees where manager_id is not null;

/* 10. select the manager name,count of employees working under and the department id of the manager. */
select manager_id,department_id,count(first_name) as no_of_employees_workin_under_particular_manager from employees 
group by manager_id;

/* 11. select the emp name,dept id,and salary.group the result with the manager name and the employee last name should have 
second letter 'a'. */
select first_name,last_name,department_id,salary,manager_id from employees where last_name like '_a%' group by manager_id;

/* 12. display the average of sum of the salaries and group the result with the dept id .order the result with the dept id. */
select department_id,avg(salary) as avg_salary from employees group by department_id order by department_id ASC;

/* 13. select the maximum salary of dept along with the dept id . */
select department_id,max(salary) from employees group by department_id;

/* 14. display the commission , if not null display 10% 0f salary, if null display a default value 1. */
select salary,commission_earned ,if(commission_earned = 0,1,0.1 * salary) as ten_percent_of_salary from employees ;