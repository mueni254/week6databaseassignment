 /* Question 1   
Write an SQL query** to get the **firstName**, **lastName**, **email**, and **officeCode** of all employees.  
Use an **INNER JOIN** to combine the **employees** table with the **offices** table using the **officeCode** column. */

USE salesdb;

SELECT 
	e.firstName, 
    e.lastName, 
    e.email, 
    o.officeCode
FROM
	employees AS e
INNER JOIN 
	offices AS O 
ON	
	e.officeCode=o.officeCode;
    

/* Question 2   
Write an SQL query** to get the **productName**, **productVendor**, and **productLine** from the **products** table.  
Use a **LEFT JOIN** to combine the **products** table with the **productlines** table using the **productLine** column.*/

SELECT
	p.productName, 
    p.productVendor, 
    p.productline
FROM
	products AS p
LEFT JOIN
	productlines AS pl
ON
	p.productline = pl.productline;
    
    
/* Question 3   
Write an SQL query** to retrieve the **orderDate**, **shippedDate**, **status**, and **customerNumber** for the first 10 orders.  
Use a **RIGHT JOIN** to combine the **customers** table with the **orders** table using the **customerNumber** column. */

SELECT
	o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM
	customers AS c
RIGHT JOIN
	orders AS o
ON 
c.customerNumber = o.customerNumber
ORDER BY
	o.orderdate
LIMIT 10;