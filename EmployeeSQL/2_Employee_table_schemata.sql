CREATE TABLE departments (
  dept_no varchar(10) PRIMARY KEY NOT NULL,
  dept_name varchar(30) NOT NULL
);

CREATE TABLE titles (
  title_id varchar(10) PRIMARY KEY NOT NULL,
  title varchar(30) NOT NULL
);

CREATE TABLE employees (
  emp_no integer PRIMARY KEY NOT NULL,
  emp_title_id varchar(10) NOT NULL,
  birth_date date,
  first_name varchar(30) NOT NULL,
  last_name varchar(30) NOT NULL,
  sex varchar(5) NOT NULL,
  hire_date date NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp ( 
  emp_no integer NOT NULL,
  dept_no varchar(10) NOT NULL,
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
  dept_no varchar(10) NOT NULL,
  emp_no integer NOT NULL,
 PRIMARY KEY (emp_no, dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
  emp_no integer PRIMARY KEY NOT NULL,
  salary integer NOT NULL
);
