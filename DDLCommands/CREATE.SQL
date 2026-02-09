-- CREATE DATABASE sample_db;
USE sample_db;

-- CREATING FIRST TABLE
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
    employee_ID INT,
    name VARCHAR(20),
    age INT,
    department VARCHAR(50)
);
SELECT * FROM employee;


-- TABLE WITH CONSTRAINTS
DROP TABLE IF EXISTS employee;
CREATE TABLE IF NOT EXISTS  employee(
    employee_ID SERIAL,
    name VARCHAR(20) NOT NULL,
    age INT CHECK (age >= 18),
    department VARCHAR(20)
);
SELECT * FROM employee;

