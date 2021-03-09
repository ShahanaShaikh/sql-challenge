create table titles(
	title_id varchar(20) primary key,
	title varchar(30)
);

drop table titles;

create table employees(
	emp_no int primary key,
	emp_title_id varchar(20),
	birth_date date,
	first_name varchar(50),
	last_name varchar(50),
	sex char(1),
	hire_date date
);

drop table employees;

create table departments(
	dept_no varchar(20) primary key,
	dept_name varchar(20)
);

alter table departments
drop constraint dept_no_pkey;

drop table departments;

create table dept_emp(
	emp_no serial,
	dept_no varchar(20)
);


drop table dept_emp;

create table dept_manager(
	dept_no varchar(20),
	emp_no int
);

drop table dept_manager;

create table salaries(
	emp_no int,
	salary int
);

drop table salaries;