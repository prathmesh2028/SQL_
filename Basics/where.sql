USE gfg;

-- Employees with age more than 25
SELECT * FROM employees WHERE age > 25;

-- Employees with age more than 20;
SELECT * FROM employees WHERE age > 20 AND department = 'sales';

-- Employees with age in 30 and 40 and department sales
SELECT * FROM employees WHERE age >= 30 AND age <= 40 AND department = 'sales';
SELECT * FROM employees WHERE age BETWEEN 30 AND 40 AND department = 'sales';


-- Employees from sales or marketing
SELECT * FROM employees WHERE department = 'marketing' OR department = 'sales';

-- SEARCHING FOR NAME STARTING WITH J
SELECT * FROM employees WHERE name LIKE 'j%';

-- GETTING THE NULL DATA THROUGHT THE DATA SET
SELECT * FROM employees WHERE department IS NULL;

-- GETTING ONLY NOT NULL DATA THROUGHT THE DATASET
SELECT * FROM employees WHERE department IS NOT NULL;


-- GETTING ONLY NOT NULL DATA THROUGHT THE DATASET
SELECT * FROM employees WHERE department IS NOT NULL AND age IS NOT NULL;

-- Getting data using IN command
SELECT * FROM employees WHERE department IN ('sales' , 'marketing');

SELECT * FROM employees WHERE department NOT IN ('sales' , 'marketing');

SELECT * FROM employees WHERE (department IN ('sales' , 'marketing')) AND age > 30;