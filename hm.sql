-- Perform inner join to answer question one
select employees.emp_no,employees.last_name,employees.first_name,employees.gender,salaries.salary
from salaries
inner join employees on
employees.emp_no = salaries.emp_no;

-- Perform wilcard to answer question two
--select * from employees;
select * from employees
where hire_date like '1986%';

--Answering question three
select departments.dept_name,dept_manager.dept_no,dept_manager.emp_no,dept_manager.from_date,
dept_manager.to_date,employees.last_name,employees.first_name
from dept_manager 
inner join departments on
departments.dept_no = dept_manager.dept_no
inner join employees on 
dept_manager.emp_no = employees.emp_no; 

--Answering question four
select departments.dept_name,dept_emp.emp_no,employees.last_name,employees.first_name
from dept_emp 
inner join departments on
departments.dept_no = dept_emp.dept_no
inner join employees on
dept_emp.emp_no = employees.emp_no;

--Answering question five
select * from employees
where first_name like 'Hercules' and last_name like 'B%';

--Answering question six
select dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name
from dept_emp 
inner join departments on
departments.dept_no = dept_emp.dept_no
inner join employees on
dept_emp.emp_no = employees.emp_no
where departments.dept_name like 'Sales';

--Answering question 7
select dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name
from dept_emp 
inner join departments on
departments.dept_no = dept_emp.dept_no
inner join employees on
dept_emp.emp_no = employees.emp_no
where departments.dept_name like 'Sales' or departments.dept_name like 'Development';

--select* from departments;
select last_name, count(last_name) as namecount
from employees
group by last_name
order by namecount desc;

