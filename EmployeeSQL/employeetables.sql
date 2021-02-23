--drop tables incase rerunning or needed
drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;

--create the departments table
create table departments (
	dept_no	varchar primary key,
	dept_name varchar
);

-- integrity check
select * from departments;

--create titles table
create table titles(
	title_id varchar primary key,
	title varchar
);

-- integrity check
select * from titles
order by title asc;

--create employees table
create table employees(
	emp_no varchar primary key,
	emp_title_id varchar,
	foreign key (emp_title_id) references titles(title_id),
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex	varchar,
	hire_date varchar
);

-- integrity check
select * from employees
order by last_name,first_name asc;


--create the dept_emp table
create table dept_emp(
	emp_no varchar,
	foreign key (emp_no) references employees(emp_no),
	dept_no varchar,
	foreign key (dept_no) references departments(dept_no)
);

-- integrity check
select * from dept_emp;

--create dept_manager table
create table dept_manager(
	dept_no varchar,
	foreign key (dept_no) references departments(dept_no),
	emp_no varchar,
	foreign key (emp_no) references employees(emp_no)
	);
	
-- integrity check
select * from dept_manager;

--create salaries table
create table salaries(
	emp_no varchar,
	foreign key (emp_no) references employees(emp_no),
	salary int
);

-- integrity check
select * from salaries;



