CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);
SELECT * FROM departments;

CREATE TABLE titles (
    title_id CHAR(5) PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);


SELECT * FROM titles;


CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id CHAR(5),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE
);
SELECT * FROM employees;

-- Create "dept_emp" table
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no CHAR(4),

    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select * from dept_emp;


-- Create "dept_manager" table
CREATE TABLE dept_manager (
    dept_no CHAR(4),
    emp_no INT,

    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_manager;


-- Create "salaries" table
CREATE TABLE salaries (
    emp_no INT,
    salary INT,
 
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

