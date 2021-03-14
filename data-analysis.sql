select * from departments;

select * from dept_emp;

select * from dept_manager;

select * from employees;

select * from salaries;

select * from titles;

-- 1. Employee: employee number, last name, first name, sex, and salary
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees e, salaries s
where e.emp_no = s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986
select first_name, last_name, hire_date, extract (year from hire_date) as year
from employees
where  hire_date between '1986-01-01' and '1986-12-31';

-- 3.List manager of each department with the following: department number, department name
-- the manager's employee number, last name, first name
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from departments d, employees e, dept_manager dm
where d.dept_no = dm.dept_no and dm.emp_no = e.emp_no; 

-- 4. List the department of each employee with the following: employee number, last name,
-- first name, and department name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d, dept_emp de
where e.emp_no = de.emp_no and d.dept_no = de.dept_no;

-- 5. List first name, last name, and sex for employees who first name is 'Hercules'
-- and last names begin with 'B'
select first_name, last_name, sex 
from employees
where first_name = 'Hercules' and last_name LIKE 'B%';

-- 6. List all employees in the the Sales department, including employee number, 
-- last name, first name, and department name
-- select * from departments;
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d, dept_emp de
where e.emp_no = de.emp_no and d.dept_no = de.dept_no
and d.dept_no = 'd007';

-- 7. List all employees in the Sales and Development departments, including
-- employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d, dept_emp de
where e.emp_no = de.emp_no and d.dept_no = de.dept_no
and d.dept_no in ('d005','d007');

-- 8. In descending order, list the frequency count of employee last names
select last_name, count(last_name) as name_count
from employees
group by last_name
order by name_count desc;


select * from salaries;
select * from titles;

select avg(s.salary), t.title 
from salaries s, titles t, employees e
where s.emp_no = e.emp_no 
and t.title_id = e.emp_title_id
group by t.title;
