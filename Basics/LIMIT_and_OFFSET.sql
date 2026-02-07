use gfg;

-- APPLYING THE LIMIT
SELECT * FROM employees LIMIT 5;

-- GETTING THE NEXT FIVE i.e OFFSET 
SELECT * FROM employees LIMIT 5 OFFSET 5;
-- by default the offset is 0 , offset means from where you want that limit rows i.e entities

-- These both will give the same result
SELECT * FROM employees WHERE department = 'sales' LIMIT 5 OFFSET 0;
SELECT * FROM employees WHERE department = 'sales' LIMIT 5;