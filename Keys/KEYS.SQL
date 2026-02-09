use sample_db;

-- primary key
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS employees;
CREATE TABLE  IF NOT EXISTS employees(
    employee_ID INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);
SELECT * FROM employees;


-- COMPOSITE KEY
DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders(
    order_ID INT ,
    customer_ID INT,
    order_date DATE, 
    PRIMARY KEY (order_ID , customer_ID)
);
SELECT * FROM orders;



-- FOREIGN KEY
DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders(
    order_ID INT AUTO_INCREMENT PRIMARY KEY ,
    customer_ID INT ,
    order_date DATE,
    FOREIGN KEY (customer_ID) REFERENCES employees(employee_ID)
);
SELECT * FROM orders;

-- unique constraints as composite key
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS employees;
CREATE TABLE  IF NOT EXISTS employees(
    employee_ID INT PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    name VARCHAR(50),
    department VARCHAR(50)
);
SELECT * FROM employees;



-- check constraints
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS employees;
CREATE TABLE IF NOT EXISTS employees(
    employee_ID INT PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    age INT CHECK (age >= 18),
    phone VARCHAR(10) UNIQUE,
    name VARCHAR(30),
    department VARCHAR(30)
);
SELECT * FROM employees;