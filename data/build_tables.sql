-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/WeSRNv
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
	id SERIAL PRIMARY KEY,
    "dept_no" varchar NOT NULL,
    "dept_name" varchar   NOT NULL,
	UNIQUE(dept_no)
);
drop table departments;
select * from departments;

CREATE TABLE "employees" (
    "emp_no" int PRIMARY KEY,
    "emp_title_id" int   NOT NULL,
    "birth_date" varchar   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" varchar   NOT NULL
);

--select * from employees;

CREATE TABLE "dept_emp" (
    "emp_no" int NOT NULL,
    "dept_no" int   NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);

--drop table dept_emp;
--select * from dept_emp;

CREATE TABLE "dept_manager" (
    "dept_no" int   NOT NULL,
    "emp_no" int   NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);
--select * from dept_manager;

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
	UNIQUE("emp_no")
);

--drop table salaries;
--select * from salaries;


CREATE TABLE "titles" (
    "title_id" SERIAL PRIMARY KEY,
    "title" varchar   NOT NULL
);

--select * from titles;

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

CREATE INDEX "idx_departments_dept_no"
ON "departments" ("dept_no");

CREATE INDEX "idx_employees_emp_no"
ON "employees" ("emp_no");

CREATE INDEX "idx_titles_title_id"
ON "titles" ("title_id");

--drop tables and select statements left for convenience and tuning
drop table if exists departments cascade;
drop table if exists employees cascade;
drop table if exists titles cascade;
drop table if exists salaries cascade;
drop table if exists dept_manager cascade;
drop table if exists dept_employee cascade;

INSERT INTO 
departments ("dept_no", "dept_name") 
VALUES ('d001', 'Marketing');

select * from departments;


INSERT INTO departments (dept_no, dept_name) VALUES ('d001', 'Marketing'), ('d002', 'Finance'), ('d003', 'Human Resources'), ('d004', 'Production'), ('d005', 'Development'), ('d006', 'Quality Management'), ('d007', 'Sales'), ('d008', 'Research'), ('d009', 'Customer Service');