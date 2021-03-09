
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select 
	employees.emp_no, first_name, last_name, sex, salaries.salary
from employees
inner join salaries
	on employees.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where extract(year from hire_date) = '1986'
order by hire_date nulls last;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select dept_manager.emp_no, 
employees.first_name, 
employees.last_name, 
dept_manager.dept_no, 
departments.dept_name
from dept_manager
left join departments 
	on departments.dept_no = dept_manager.dept_no
left join employees
	on employees.emp_no = dept_manager.emp_no
order by first_name;

-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.
select dept_emp.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
from dept_emp
left join employees
	on employees.emp_no = dept_emp.emp_no
left join departments
	on departments.dept_no = dept_emp.dept_no;
	
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name,
last_name,
sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select dept_emp.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
from dept_emp
left join employees
	on employees.emp_no = dept_emp.emp_no
left join departments
	on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select dept_emp.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
from dept_emp
left join employees
	on employees.emp_no = dept_emp.emp_no
left join departments
	on departments.dept_no = dept_emp.dept_no
where dept_name in ('Sales', 'Development');

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;