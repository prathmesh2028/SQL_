USE gfg;
SELECT * FROM products;


-- finding the number of products in the dataset
SELECT DISTINCT(COUNT(product_name)) AS product_count FROM products;
SELECT COUNT(*) FROM products;


--finding the average discount price from the dataset
SELECT AVG(discounted_price) average_discounted_price FROM products;
SELECT AVG(marked_price) AS average_marked_price FROM products;


--finding the maximum discount can a product have
SELECT MAX(discounted_price) AS max_discounted_price FROM products;
SELECT MAX(marked_price) AS max_discounted_price FROM products;



--finding the maximum discount can a product have
SELECT MIN(discounted_price) AS max_discounted_price FROM products;
SELECT MIN(marked_price) AS max_discounted_price FROM products;



-- finding the total rating count of all products
SELECT SUM(rating_count) AS total_rating FROM products;


--find the total unique brands
SELECT DISTINCT(brand_name) AS brands FROM products;

--finding the number of unique brands 
SELECT COUNT(DISTINCT(brand_name)) AS brands FROM products;
