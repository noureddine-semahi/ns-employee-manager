## Employee Manager:
Create an app that allows the users to create and manage Employee Database.  The database consists of three tables employee, role, and department.  The user has the following options in the main menu.

the link to github is shown below:
https://github.com/noureddine-semahi/ns-employee-manager


## Table of Contents
* [User Story](#user-story)
* [Version 1.0](#version-1.0)
* [How To Use](#how-to-use)
* [Coding Languages Used](#coding-languages-used)
* [NPMs Used](#npms-used)
* [Structure of Code and Functions](#structure-of-code-and-functions)
* [Known Issues With Code](#known-issues-with-code)

## User Story
As a business owner I am in need of an app that allows me to create and edit a company database.  This database will keep track of my departments and the job roles in each department.  Then it will also keep track of my department managers and their employees.  The employees will all have basic information such as first and last name, salary, job title(role), department they work in and who their manager is.

## Version 1.0
* This employee manager app runs by typing "node index.js" in the command line.
* Need to be in the main folder in terminal when running the command.

## How To Use

This main menu holds all the functionality of the app.  It is here that you will be returned when you complete each operation.  The options are listed below:
# 
    View all departments
    View all roles
    View all employees
    View all employees by department
    View all employees by manager
    view all employees by role
    view all managers
    Add a department
    Remove a department
    Add a role
    Remove a role
    Add employee
    Remove employee
    Update employee role
    Update employee manager

# Hints when using
    - app will prompt user which employee to delete with more information if there are two employees with same name
    - When an update and delete is performed on an employee or role the app checks for multiples instances in the database with the same name
        and trys to help by giving further options to decipher which instance you are trying to change.  This is because you could have a role by the same title in different departments or employees with the same name in your company.
    - When employee role is updated the department for that employee automatically updated

* **Note:**
    - When creating database from scratch it is important to start with departments.
    - Then add the roles for each department
    - Then add the employees.
    - **This is important becasue "add", "delete" and "view by" are prompted by lists generated from database**

## Coding Languages Used
* Javascript
* Node.js
* SQL

## NPMs Used:
* NPM Node
* NPM mysql
* NPM inquirer


## Structure of Code and Functions
* db folder - contains the files used to initialize my database in SQL workbench
    - employe_manager_db.sql: is the file used to create the schema and tables
    - seed.sql:  is the file with values to fill table with that I used for testing
* lib folder - contains all my javascript files that are referenced by index.js and connection.js
* Public Folder
    - Assets Folder

## Known Issues With Code
*  - The index.js file is incredibly cumbersome to look at and would be beneficial to clean up and utilize SQL_queries.js more
    - Must create new department before creating a new manager.  Logic takes you down a path where user will be prompted to add a manager for that manager which then determines their department.
    - Currently a manager can manage someone not in their department.  Not sure if its an issue but important to note.
    - One thing with code is that I have a SQLqueries file but still do queries in index.js  The reason I do this is because I was unable to figure out how to return the response object from the query when referencing the general method I created until the end of the week.
    - Currently when deleting a role or a department the user is not told if their are employees in existance with that role or in that department.  This is a problem because when they delete that role or department the employees are deleted too.
    - View employees by manager will not always display proper manager if there are two managers with same name.  I ran out of time to duplicate the update check functionality to this function.

## Demo Video:
To view the demo video, you can follow this link:
 -[ScreenCastify Video](https://drive.google.com/file/d/1WM-w_TjWGL6eUCj8RASWDNu9fAwp1wKj/view)
