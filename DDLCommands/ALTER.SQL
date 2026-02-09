USE sample_db;

-- TABLE WITH CONSTRAINTS
DROP TABLE IF EXISTS employee;
CREATE TABLE IF NOT EXISTS  employee(
    employee_ID SERIAL,
    name VARCHAR(20) NOT NULL,
    age INT CHECK (age >= 18),
    department VARCHAR(20)
);
SELECT * FROM employee;


-- adding new column in a table
ALTER TABLE employee
    ADD COLUMN mail VARCHAR(50);
SELECT * FROM employee;


-- renaming the column
ALTER TABLE employee
    RENAME COLUMN employee_ID TO ID;
SELECT * FROM employee;

-- DROPPING HE COLUMN
ALTER TABLE employee 
    DROP COLUMN mail;
SELECT * FROM employee;


-- adding collumn with a default value
ALTER TABLE employee
    ADD COLUMN marital_status VARCHAR(20) DEFAULT 'NOT MARRIED';
SELECT * FROM employee;