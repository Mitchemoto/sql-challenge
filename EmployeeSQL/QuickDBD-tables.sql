-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL
);

CREATE TABLE "Department Employee" (
    "emp_no" varchar   NOT NULL,
    "dept_no" varchar   NOT NULL
);

CREATE TABLE "Department Manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" varchar   NOT NULL
);

CREATE TABLE "Employees" (
    "emp_no" varchar   NOT NULL,
    "emp_title_id" varchar   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" date   NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_no" varchar   NOT NULL,
    "salary" int   NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL
);

ALTER TABLE "Department Employee" ADD CONSTRAINT "fk_Department Employee_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Department Employee" ADD CONSTRAINT "fk_Department Employee_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department Manager" ADD CONSTRAINT "fk_Department Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department Manager" ADD CONSTRAINT "fk_Department Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_title_id" FOREIGN KEY("title_id")
REFERENCES "Employees" ("emp_title_id");

