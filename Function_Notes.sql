USE chipotle;

SHOW TABLES;

SELECT * FROM orders;

SELECT concat(item_name, ': ', choice_description) AS 'column_name_custom' FROM orders;

SELECT item_name FROM orders WHERE item_name NOT LIKE '%b%';

-- substrings: substr

SELECT substr('When I See The Sun Always Shines on TV', 12, 7);
SELECT substr('When I See The Sun Always Shines on TV', 12);
SELECT substr('When I See The Sun Always Shines on TV', 1, 5);

SELECT substr(item_name, 10, 5) AS 'garbage' FROM orders;

-- REPLACE is case sensitive

SELECT REPLACE('This is a STRING', 'STRING', 'not a string I am lying');
SELECT REPLACE(item_name, 'Bowl', 'Unburrito') FROM orders;
SELECT REPLACE(item_name, 'S', 'xxxxxxxxx') FROM orders;

-- UPPER/LOWER

SELECT upper('yelling');
SELECT lower('kjkjhkhJGHVHVKYVYKhvo');
SELECT upper(choice_description) FROM orders;
SELECT upper(concat(item_name, ': ', choice_description)) AS column_name_custom FROM orders;

-- TIME FUNCTION

SELECT now();
SELECT curtime();
SELECT curdate();
SELECT unix_timestamp();
SELECT unix_timestamp('2021-03-29 15:08:09');
SELECT concat('Data Science instructor at Codeup for ', unix_timestamp() - unix_timestamp('2021-01-11 09:00:00'), ' seconds');

-- MATH FUNCTIONS

SELECT * FROM orders;

-- MAXIMUM

SELECT max(order_id) FROM orders;
SELECT max(quantity) FROM orders;
SELECT max(item_name) FROM orders; -- doesn't necessarily what is being asked on a string
SELECT max(*) FROM orders; -- error because each max in each row is different
SELECT min(order_id) FROM orders;
SELECT AVG(order_id) FROM orders;
SELECT AVG(quantity) FROM orders;

-- CASTING

SELECT concat(1, ' Ham Sandwich');
SELECT
    CAST(123 AS CHAR),
    CAST('123' AS UNSIGNED);