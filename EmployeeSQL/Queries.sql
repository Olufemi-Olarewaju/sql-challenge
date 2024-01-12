select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;

-- List the employee number, last name, first name, sex, and salary of each employee
select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees as e
inner join salaries as s on e.emp_no = s.emp_no;
 
-- List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employees
where extract(year from hire_date) = 1986;

-- List the manager of each department along with their department number, 
-- department name, employee number, last name, and first name
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
inner join employees as e on dm.emp_no = e.emp_no
inner join departments as d on dm.dept_no = d.dept_no;

-- List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name
select de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
inner join employees as e on de.emp_no = e.emp_no
inner join departments as d on de.dept_no = d.dept_no;

-- List first name, last name, and sex of each employee 
-- whose first name is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--
































