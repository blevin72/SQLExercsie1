-- find all products
SELECT Name 
FROM products;

-- find all products that cost $1400
SELECT * FROM products
WHERE Price = '$1400';

-- find all products that cost $11.99 or $13.99
SELECT * FROM products 
WHERE Price BETWEEN '$11.99' AND '$13.99';

-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products
WHERE NOT Price = '11.99';

-- find all products and sort them by price from greatest to least
SELECT * FROM products
ORDER BY Price;

-- find all employees who don't have a middle initial
SELECT * FROM employees
WHERE MiddleInitial IS null;

-- find distinct product prices
SELECT DISTINCT Price
from Products;

-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM employees
WHERE FirstName LIKE 'j%';

-- find all Macbooks
SELECT * FROM products
WHERE Name LIKE 'MacBook';

-- find all products that are on sale
SELECT * FROM products
WHERE OnSale;

-- find the average price of all products
SELECT AVG(products.Price)
FROM products;

-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM employees
WHERE MiddleInitial IS null AND Title = "Geek Squad";

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * FROM products
WHERE StockLevel BETWEEN 500 AND 1200
ORDER BY Price;