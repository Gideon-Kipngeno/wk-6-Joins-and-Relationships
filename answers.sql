-- Question 1
-- Get firstName, lastName, email, and officeCode of all employees using INNER JOIN with offices
SELECT 
    employees.firstName, 
    employees.lastName, 
    employees.email, 
    employees.officeCode
FROM 
    employees
INNER JOIN 
    offices ON employees.officeCode = offices.officeCode;

-- Question 2
-- Get productName, productVendor, and productLine using LEFT JOIN with productlines
SELECT 
    products.productName, 
    products.productVendor, 
    products.productLine
FROM 
    products
LEFT JOIN 
    productlines ON products.productLine = productlines.productLine;

-- Question 3 
-- Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders using RIGHT JOIN with customers
SELECT 
    orders.orderDate, 
    orders.shippedDate, 
    orders.status, 
    orders.customerNumber
FROM 
    customers
RIGHT JOIN 
    orders ON customers.customerNumber = orders.customerNumber
ORDER BY 
    orders.orderDate
LIMIT 10;