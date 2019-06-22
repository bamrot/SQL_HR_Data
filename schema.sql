-- Creating tables
create table departments(dept_no varchar not null,
						dept_name varchar);
--drop table departments;
select * from employees;

create table dept_emp(emp_no int not null,
						dept_no varchar,
					 from_date varchar,
					 to_date varchar);



create table dept_manager(dept_no varchar not null,
						emp_no int,
					 from_date varchar,
					 to_date varchar);


create table employees(emp_no int,
					   birth_date varchar,
					   first_name varchar,
					   last_name varchar,
					   gender varchar,
					   hire_date varchar);


create table salaries(emp_no int not null,
						salary int,
					 from_date varchar,
					 to_date varchar);
					 

create table titles(emp_no int not null,
						title varchar,
					 from_date varchar,
					 to_date varchar);