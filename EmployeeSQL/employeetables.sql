--drop tables incase rerunning or needed
drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;

--create the departments table
create table departments (
	dept_no	varchar,
	dept_name varchar
);

-- integrity check
select * from departments;

--create the dept_emp table
create table dept_emp(
	emp_no varchar,
	dept_no varchar
);

-- integrity check
select * from dept_emp;

--create dept_manager table
create table dept_manager(
	dept_no varchar,
	emp_no varchar
	);
	
-- integrity check
select * from dept_manager;

--create employees table
create table employees(
	emp_no varchar,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex	varchar,
	hire_date date
);

-- integrity check
select * from employees
order by last_name,first_name asc;

--create salaries table
create table salaries(
	emp_no varchar,
	slary int
);

-- integrity check
select * from salaries;

--create titles table
create table titles(
	title_id varchar,
	title varchar
);

-- integrity check
select * from titles
order by title asc;

--from data mapper create the relationships

-- ALTER TABLE "Department Employee" ADD CONSTRAINT "fk_Department Employee_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "Employees" ("emp_no");

-- ALTER TABLE "Department Employee" ADD CONSTRAINT "fk_Department Employee_dept_no" FOREIGN KEY("dept_no")
-- REFERENCES "Departments" ("dept_no");

-- ALTER TABLE "Department Manager" ADD CONSTRAINT "fk_Department Manager_dept_no" FOREIGN KEY("dept_no")
-- REFERENCES "Departments" ("dept_no");

-- ALTER TABLE "Department Manager" ADD CONSTRAINT "fk_Department Manager_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "Employees" ("emp_no");

-- ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "Employees" ("emp_no");

-- ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_title_id" FOREIGN KEY("title_id")
-- REFERENCES "Employees" ("emp_title_id");