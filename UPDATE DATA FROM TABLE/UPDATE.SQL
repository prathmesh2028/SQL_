use sample_db;
DROP TABLE IF EXISTS People;

CREATE TABLE People (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50));

-- Insert sample data into the table
INSERT INTO People (first_name, last_name, age, city)
VALUES 
    ('John', 'Doe', 30, 'New York'),
    ('Jane', 'Smith', 25, 'Los Angeles'),
    ('Michael', 'Johnson', 40, 'Chicago'),
    ('Emily', 'Brown', 35, 'Houston'),
    ('David', 'Jones', 28, 'San Francisco'),
    ('Sarah', 'Davis', 32, 'Seattle'),
    ('Robert', 'Wilson', 45, 'Boston'),
    ('Jennifer', 'Martinez', 27, 'Miami'),
    ('William', 'Taylor', 38, 'Atlanta'),
    ('Jessica', 'Anderson', 33, 'Dallas'),
    ('Daniel', 'Thomas', 29, 'Philadelphia'),
    ('Maria', 'Jackson', 42, 'Phoenix'),
    ('James', 'White', 31, 'Denver'),
    ('Elizabeth', 'Harris', 36, 'Austin'),
    ('Christopher', 'Clark', 39, 'San Diego'),
    ('Amanda', 'Lewis', 26, 'Portland'),
    ('Matthew', 'Walker', 34, 'Detroit'),
    ('Ashley', 'Allen', 37, 'Las Vegas'),
    ('Joseph', 'Young', 41, 'Nashville'),
    ('Stephanie', 'Scott', 24, 'Orlando');
SELECT * from People;

-- UPDATE THE DATA BASED ON THE AGE
UPDATE people
    SET age = 20
        WHERE person_id = 1;
SELECT * from People;


-- UPDATE THE CITY AS PER THE LAST NAME
UPDATE people
    SET city = "AUSTIN"
        WHERE last_name = 'smith';
SELECT * from People;


-- UPDATE AGE OF ALL PEOPLE UNDER AGE 30 TO 30
UPDATE people
    SET age = 30
        WHERE age < 30;
SELECT * FROM people;


-- UPDATE AGE OF ALL PEOPLE IN A SPECIFIC CITY
UPDATE people
    SET age = age + 1
        WHERE city = 'new york';
SELECT * FROM people;


-- UPDATE FIRST NAME OF PEOPLE WHOSE AGE IS GREATER THAN 35
UPDATE people
    SET first_name = "senior"
        WHERE age > 35;
SELECT * FROM people;
