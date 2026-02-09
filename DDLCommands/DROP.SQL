DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
    employee_ID INT,
    name VARCHAR(200),
    age INT ,
    department VARCHAR(30) DEFAULT 'NA',
    marital_status VARCHAR(60) DEFAULT 'NOT MARRIED'
);
SELECT * FROM employee;

DROP TABLE IF EXISTS employee;
SELECT * FROM employee; -- this will give error as table does not exists