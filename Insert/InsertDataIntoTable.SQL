USE sample_db;
DROP TABLE IF EXISTS employees;
CREATE TABLE IF NOT EXISTS employees(
    employee_ID SERIAL  PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(30),
    hire_date DATE
);
SELECT * FROM employees;



-- INSERTING THE VALUES IN SINGLE ROW INTO THIS TABLE
INSERT INTO employees(employee_ID , first_name , last_name , department , hire_date)
    VALUES (1 , "PRATHMESH" , "BADHE" , "PROJECT MANAGER" , '2028-03-23' );
SELECT * FROM employees;


-- INSERT MULTIPLE ROWS
INSERT INTO employees(employee_ID , first_name , last_name , department , hire_date)
    VALUES
        (2 , "Tanmay" , "Patil" , "Manager" , "2020-09-09"),
        (3 , "Sarthak" , "kasar" , "Marketing" , "2025-07-01"),
        (4 , "Samarth" , "Boraste" , "Sales" , "2029-12-08");
SELECT * FROM employees;



-- ADD PARTIAL DATA
INSERT INTO employees(first_name , last_name)
    VALUES 
        ("Utkarsh" , "Jagtap"),
        ("Sumit" , "Solanke"),
        ("Yashdeep" , "Wadkar");
SELECT * FROM employees;



-- INSERTING THE DATA IN DIFFERENT ORDER
INSERT INTO employees(hire_date , last_name , first_name , department)
    VALUES
        ("2022-09-09" , "SANIKA" , "NERKAR" , "UI/UX"),
        ("2022-05-09" , "SAMBHAV" , "GAWADE" , "BACKEND");
SELECT * FROM employees;




-- ADDING THE CURRENT AND DEFAULT TIME STAMP
DROP TABLE IF EXISTS example_table;
CREATE TABLE IF NOT EXISTS example_table(
    employee_ID SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL ,
    hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT "ACTIVE"
);
SELECT * FROM example_table;

INSERT INTO example_table(name , status)
    VALUES
        ("ashish" , "INACTIVE"),
        ("prathmesh" , "INACTIVE"),
        ("tanmay" , "INACTIVE");
SELECT * FROM example_table;