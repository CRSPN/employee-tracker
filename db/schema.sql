DROP DATABASE IF EXISTS employees;

CREATE DATABASE employees;

USE employees;

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS roles;

CREATE TABLE departments (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary INTEGER NOT NULL,
  department_id INTEGER,
  FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE employees (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER,
  manager_id INTEGER REFERENCES employees(id),
  FOREIGN KEY (role_id) REFERENCES roles(id)
);

INSERT INTO departments (id, name)
VALUES (1, 'Customer Service');

INSERT INTO roles (id, title, salary, department_id)
VALUES (1, 'Worker Person', 30000, 1);

INSERT INTO roles (id, title, salary, department_id)
VALUES (2, 'Manager Person', 30000, 1);

INSERT INTO employees (id, first_name, last_name, role_id, manager_id)
VALUES (1, 'tom', 'Person', 1, 2);

INSERT INTO employees (id, first_name, last_name, role_id, manager_id)
VALUES (2, 'jerry', 'Person', 2, NULL );

UPDATE employees 
SET role_id = 3 
WHERE id = 1;