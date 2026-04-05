USE gfg;
SELECT * FROM products;

-- find the product name where the product name ends with 's'
SELECT * FROM products WHERE product_name LIKE '%s';

-- find the products where the brand name contains 'ad'
SELECT * FROM products WHERE brand_name LIKE '%ad%';

-- find the products where name starts with 'p' and ends with 's'
SELECT * FROM products WHERE brand_name LIKE 'p%s';

-- find the product name where the product name starts with 's'
SELECT * FROM products WHERE product_name LIKE 's%';


-- find the products where the product name contains with 'sho'
SELECT * FROM products WHERE product_name like '%sho%';

-- find the product where the brand name is exactly of 6 characters LONG
SELECT * FROM products WHERE brand_name LIKE '______';


-- find the products where the second character of the brand name is s
SELECT * FROM products WHERE brand_name LIKE '_s%';