--Creating tables and importing csv files

create table departments(
	dept_no varchar(8) not null,
	dept_name varchar(30) not null,
	primary key (dept_no)
);

create table titles(
	title_id varchar(10) not null,
	title varchar(30) not null,
	primary key (title_id)
)

create table employees(
	emp_no int not null,
	emp_title_id varchar(10) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar (2) not null,
	hire_date date not null,
	primary key (emp_no),
	foreign key (emp_title_id) references titles(title_id)
);

create table dept_emp(
	emp_no int not null,
	dept_no varchar(8) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no),
	primary key(emp_no, dept_no)
);

create table dept_manager(
	dept_no varchar(8) not null,
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no),
	primary key(emp_no, dept_no)
);

create table salaries(
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no)
);


--Check whether the csv has been imported
select * from departments
select * from titles
select * from employees
select * from dept_emp
select * from dept_manager
select * from salaries


