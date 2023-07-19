/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT p.Name AS ProductName, c.Name AS CategoriesName
FROM products AS P
INNER JOIN categories AS C
ON c.CategoryID = p.CategoryID
WHERE C.Name = "Computers";
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT products.Name, products.Price, reviews.Rating
FROM products
INNER JOIN reviews
ON products.ProductID = reviews.ProductID
WHERE reviews.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, sum(s.Quantity) AS Total
FROM Sales AS s
INNER JOIN employees AS e
ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT c.Name AS "Category Name", d.Name AS "Department Name"
FROM Departments AS d
INNER JOIN categories AS c
ON c.DepartmentID = d.DepartmentID
WHERE c.Name = "Appliances" OR c.Name = "Games";


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT products.Name, Sum(sales.Quantity) AS 'Total Units Sold', Sum(sales.PricePerUnit * sales.Quantity) AS 'Total Price Sold'
 FROM products
 INNER JOIN sales
 ON products.ProductID = sales.ProductID
 WHERE products.Name LIKE "%Hotel California%"
 GROUP BY products.Name;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT products.Name, reviews.Reviewer, reviews.Rating, reviews.Comment
FROM products
INNER JOIN reviews
ON products.ProductID = reviews.ProductID
WHERE products.Name LIKE "%visio%";

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */