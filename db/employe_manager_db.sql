DROP DATABASE IF EXISTS Employee_Manager_db;

CREATE DATABASE Employee_Manager_db; 

USE Employee_Manager_db;

CREATE TABLE department(
id INT auto_increment KEY NOT NULL,
name VARCHAR(50)
);


CREATE TABLE role(
id INT auto_increment PRIMARY KEY NOT NULL,
title VARCHAR(50),
salary DECIMAL(10),
department_id INT,
FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);


CREATE TABLE employee(
id INT auto_increment PRIMARY KEY NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50),
role_id INT NOT NULL,
manager_id INT,
FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);
