 /* 1) Find the date difference between the hire_date and resignation_date for all the employees. Display in no. of days, months and year(1 year 3 months 5 days).*/
  select concat(timestampdiff(year,registration_date,hire_date),' year ',timestampdiff(month,registration_date,hire_date),' months ',
  timestampdiff(day,registration_date,hire_date),' days') as difference from employees;
 
 /* 2) Format the hire_date as mm/dd/yyyy(09/22/2003) and resignation_date as mon dd, yyyy(Aug 12th, 2004) Display the null as (DEC, 01th 1900) */
select employee_id,date_format(hire_date,'%m/%d/%Y') as updated_hire_date,date_format(registration_date,'%b %D, %Y') 
as updated_registration_date from employees;

 /* 3) Calcuate experience of the employee till date in Years and months(example 1 year and 3 months)  */
 select concat(timestampdiff(year,hire_date,curdate()),' year',' ', 'and',' ', timestampdiff(month,hire_date,curdate()),' months')  as experience from employees ;
 
 /* Use Getdate0 as input date for the below three questions.*/
 /*4) Display the count of days in the previous quarter*/
 /*5) Fetch the previous Quarter's second week's first day's date*/
/*6) Fetch the financial year's 15th week's dates (Format: Mon DD YYYY)*/
/*7) Find out the date that corresponds to the Last Saturday of January, 2015 using with clause.
 
Use Airport database for the below two question:*/
/*8) Find the number of days elapsed between first and last flights of a passenger.*/
/*9) Find the total duration in minutes and in seconds of the flight from Rostov to Moscow*/