use hr_management;
alter table employees add commission_earned decimal(8,2);
UPDATE employees SET commission_earned = 0.00 where employee_id=100;
delete from employees where employee_id = 0;
UPDATE employees SET commission_earned = 0.00 where employee_id=101;
UPDATE employees SET commission_earned = 0.00 where employee_id=102;
UPDATE employees SET commission_earned = 0.00 where employee_id=103;
UPDATE employees SET commission_earned = 0.00 where employee_id=104;
UPDATE employees SET commission_earned = 0.00 where employee_id=105;
UPDATE employees SET commission_earned = 0.00 where employee_id=106;
UPDATE employees SET commission_earned = 0.00 where employee_id=107;
UPDATE employees SET commission_earned = 0.00 where employee_id=108;
UPDATE employees SET commission_earned = 0.00 where employee_id=109;
UPDATE employees SET commission_earned = 0.00 where employee_id=110;
UPDATE employees SET commission_earned = 0.00 where employee_id=111;
UPDATE employees SET commission_earned = 0.00 where employee_id=112;
UPDATE employees SET commission_earned = 0.00 where employee_id=113;
UPDATE employees SET commission_earned = 0.00 where employee_id=114;
UPDATE employees SET commission_earned = 0.00 where employee_id=115;
UPDATE employees SET commission_earned = 0.40 where employee_id=116;
UPDATE employees SET commission_earned = 0.30 where employee_id=117;
UPDATE employees SET commission_earned = 0.30 where employee_id=118;
UPDATE employees SET commission_earned = 0.50 where employee_id=119;
UPDATE employees SET commission_earned = 0.20 where employee_id=120;
UPDATE employees SET commission_earned = 0.10 where employee_id=121;
UPDATE employees SET commission_earned = 0.25 where employee_id=122;
UPDATE employees SET commission_earned = 0.35 where employee_id=123;
UPDATE employees SET commission_earned = 0.25 where employee_id=126;
UPDATE employees SET commission_earned = 0.55 where employee_id=145;
UPDATE employees SET commission_earned = 0.10 where employee_id=146;
UPDATE employees SET commission_earned = 0.45 where employee_id=176;
UPDATE employees SET commission_earned = 0.00 where employee_id=177;
UPDATE employees SET commission_earned = 0.00 where employee_id=178;
UPDATE employees SET commission_earned = 0.00 where employee_id=179;
UPDATE employees SET commission_earned = 0.00 where employee_id=192;
UPDATE employees SET commission_earned = 0.00 where employee_id=193;
UPDATE employees SET commission_earned = 0.00 where employee_id=200;
UPDATE employees SET commission_earned = 0.00 where employee_id=201;
UPDATE employees SET commission_earned = 0.00 where employee_id=202;
UPDATE employees SET commission_earned = 0.30 where employee_id=203;
UPDATE employees SET commission_earned = 0.00 where employee_id=204;
UPDATE employees SET commission_earned = 0.45 where employee_id=205;
UPDATE employees SET commission_earned = 0.00 where employee_id=206;
UPDATE employees SET commission_earned = null where employee_id=206;
UPDATE employees SET commission_earned = 0.00 where employee_id=100;
UPDATE employees SET commission_earned =null where employee_id=100;
UPDATE employees SET commission_earned =null where employee_id=122;
select * from employees;
alter table employees add registration_date date;

update employees set registration_date = '1986-06-14' where employee_id=100;

UPDATE employees SET registration_date = '1986-07-01'where employee_id=101;
UPDATE employees SET registration_date = '1977-01-26' where employee_id=102;
UPDATE employees SET registration_date = '1985-02-24' where employee_id=103;
UPDATE employees SET registration_date = '1990-06-14' where employee_id=104;
UPDATE employees SET registration_date = '1989-03-04' where employee_id=105;
UPDATE employees SET registration_date = '1989-05-27' where employee_id=106;
UPDATE employees SET registration_date = '1993-04-17' where employee_id=107;
UPDATE employees SET registration_date = '1985-07-22' where employee_id=108;
UPDATE employees SET registration_date = '1986-08-15' where employee_id=109;
UPDATE employees SET registration_date = '1992-09-20' where employee_id=110;
UPDATE employees SET registration_date = '1992-10-17' where employee_id=111;
UPDATE employees SET registration_date = '1995-11-11' where employee_id=112;
UPDATE employees SET registration_date = '1990-12-30' where employee_id=113;
UPDATE employees SET registration_date = '1984-01-31' where employee_id=114;
UPDATE employees SET registration_date = '1988-02-27' where employee_id=115;
UPDATE employees SET registration_date = '1990-12-25' where employee_id=116;
UPDATE employees SET registration_date = '1991-11-19' where employee_id=117;
UPDATE employees SET registration_date = '1992-11-16' where employee_id=118;
UPDATE employees SET registration_date = '1993-10-22' where employee_id=119;
UPDATE employees SET registration_date = '1988-09-23' where employee_id=120;
UPDATE employees SET registration_date = '1983-05-05' where employee_id=121;
UPDATE employees SET registration_date = '1980-01-14' where employee_id=122;
UPDATE employees SET registration_date = '1990-03-10' where employee_id=123;
UPDATE employees SET registration_date = '1993-05-29' where employee_id=126;
UPDATE employees SET registration_date = '1988-08-18' where employee_id=145;
UPDATE employees SET registration_date = '1992-07-17' where employee_id=146;
UPDATE employees SET registration_date = '1990-07-23' where employee_id=176;
UPDATE employees SET registration_date = '1981-09-04' where employee_id=177;
UPDATE employees SET registration_date = '1973-06-10' where employee_id=178;
UPDATE employees SET registration_date = '1971-01-14' where employee_id=179;
UPDATE employees SET registration_date = '1990-12-15' where employee_id=192;
UPDATE employees SET registration_date = '1991-03-27' where employee_id=193;
UPDATE employees SET registration_date = '1975-04-12' where employee_id=200;
UPDATE employees SET registration_date = '1976-11-13' where employee_id=201;
UPDATE employees SET registration_date = '1995-10-06' where employee_id=202;
UPDATE employees SET registration_date = '1990-12-12' where employee_id=203;
UPDATE employees SET registration_date = '1988-12-19' where employee_id=204;
UPDATE employees SET registration_date = '1979-12-15' where employee_id=205;
UPDATE employees SET registration_date = '1980-01-18' where employee_id=206;

select * from employees;