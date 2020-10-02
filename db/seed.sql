USE employee_manager_db;
INSERT INTO department (name)
 VALUES ("IT"),
		("Production"),
		("Engineering"),
		("Accounting"),
		("Sales");

INSERT INTO role (title, salary, department_ID) 
VALUES  ("Manager", 135000, 1),
		("IT Tech", 60000, 1),
		("Manager", 120000, 2),
		("Team Lead", 55000, 2),
		("Operator", 35000, 2),
		("Manager", 110000 , 3),
		("Software Engineer", 85000, 3),
		("Lead Engineer", 100000, 3),
		("Manager", 90000, 4),
		("Accountant", 70000, 4),
		("Manager", 85000, 5),
		("Sales Lead", 90000, 5),
		("Salesperson", 70000, 5);

USE employee_manager_db;

INSERT INTO employee (first_name, last_name, role_id, manager_id) 
VALUES  ("Mark", "Meyers", 1, NULL ),
		("Aaron", "Russels", 2, 1),
		("John", "Schmidt", 3, NULL),
		("Gabriella", "Suarez", 4, 3),
		("Joshua", "Stevenson", 5, 3),
		("Robert", "Lee", 6, NULL),
		("Edward", "Jerold", 7, 6),
		("Jerry", "hopkins", 8, 6),
        ("Ryan", "Dwayne", 9, NULL),
        ("Sylvia", "Franklin", 10, 9);