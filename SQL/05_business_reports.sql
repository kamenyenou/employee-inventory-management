
-- Employee and Inventory Management System
-- Project: Business Reports
-- Database: SQLite

-- Report 1: Count the total number of products
SELECT
    COUNT(*) AS total_products
FROM Products;


-- Report 2: Calculate the total inventory value
SELECT
    SUM(quantity * unit_price) AS total_inventory_value
FROM Products;


-- Report 3: List products from most expensive to least expensive
SELECT
    product_name,
    unit_price
FROM Products
ORDER BY unit_price DESC;


-- Report 4: Identify products that need to be reordered
SELECT
    product_name,
    quantity,
    reorder_level
FROM Products
WHERE quantity <= reorder_level
ORDER BY quantity ASC;


-- Report 5: Count inventory transactions by employee
SELECT
    Employees.first_name,
    Employees.last_name,
    COUNT(InventoryTransactions.transaction_id) AS total_transactions
FROM Employees
LEFT JOIN InventoryTransactions
    ON Employees.employee_id = InventoryTransactions.employee_id
GROUP BY
    Employees.employee_id,
    Employees.first_name,
    Employees.last_name
ORDER BY total_transactions DESC;


-- Report 6: Summarize inventory activity by transaction type
SELECT
    transaction_type,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity
FROM InventoryTransactions
GROUP BY transaction_type;
