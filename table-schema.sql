-- Create the titles table
CREATE TABLE IF NOT EXISTS titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(25) NOT NULL
);

-- Create the departments table
CREATE TABLE IF NOT EXISTS departments (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(25) NOT NULL
);

-- Create enum to use in employees table sex column
CREATE TYPE sex_enum AS ENUM ('M', 'F');

-- Create the employees table
CREATE TABLE IF NOT EXISTS employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5),
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex sex_enum NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create the salaries table
CREATE TABLE IF NOT EXISTS salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, salary)
);

-- Create the dept_emp table
CREATE TABLE IF NOT EXISTS dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create the dept_manager table
CREATE TABLE IF NOT EXISTS dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

