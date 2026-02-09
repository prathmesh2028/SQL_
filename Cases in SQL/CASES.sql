USE gfg;
-- SELECT * FROM employees;

-- Basuc case for sales team
SELECT name,
CASE department
    WHEN 'sales' then 'sales team'
    ELSE 'other'
END AS employee_name FROM employees;

-- BASIC CASE FOR SALES TEAM AND MARKETING TEAM
SELECT name,
CASE department 
    WHEN 'sales' THEN 'sales team'
    WHEN 'marketing' THEN 'marketing team'
    ELSE 'other'
END AS employee_name FROM employees;


-- CASES WITH RESPECT TO AGE
SELECT name ,
CASE
    WHEN age >= 30 THEN 'young man aa'
    WHEN age < 30 THEN 'you are just a adult'
    ELSE 'other'
END AS employee_age FROM employees;


-- nested cases
SELECT name,
CASE 
    WHEN age <= 30 THEN 
        CASE 
            WHEN department = 'sales' THEN 'jr. sales executive'
            ELSE 'junior'
        END
    WHEN age >= 30 AND age <= 40 THEN 'mid aged'
    ELSE 'senior'
END AS employee_name FROM employees;




-- DEALING WITH NULL DEPARTMENTS
SELECT name ,
CASE 
    WHEN department IS NULL THEN 'no department assigned'
    ELSE department
END AS department_status from employees;