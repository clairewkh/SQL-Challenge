--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select em.emp_no, em.last_name, em.first_name, em.sex, sal.salary 
from employees em, salaries sal
where em.emp_no = sal.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date 
from employees
where date_part('year', hire_date) = 1986

--3. List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.
select dept.dept_no, dept.dept_name, dm.emp_no, em.last_name, em.first_name
from departments dept, dept_manager dm, employees em
where dept.dept_no = dm.dept_no and dm.emp_no = em.emp_no;

--4. List the department of each employee with the following information: employee number, last name, 
--first name, and department name.
select d_em.emp_no, em.last_name, em.first_name, dept.dept_name
from dept_emp d_em, employees em, departments dept
where d_em.emp_no = em.emp_no and d_em.dept_no = dept.dept_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, 
--first name, and department name.
select d_emp.emp_no, em.last_name, em.first_name, dept.dept_name
from dept_emp d_emp, employees em, departments dept
where d_emp.emp_no = em.emp_no and d_emp.dept_no = dept.dept_no and dept.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
select d_emp.emp_no, em.last_name, em.first_name, dept.dept_name
from dept_emp d_emp, employees em, departments dept
where d_emp.emp_no = em.emp_no and d_emp.dept_no = dept.dept_no and 
(dept.dept_name = 'Sales' or dept.dept_name = 'Development');

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as frequency
from employees
group by last_name
order by count(last_name) desc;

