
-- Employee and Inventory Management System
-- Project: Database Testing and Validation
-- Database: SQLite

PRAGMA foreign_keys = ON;

-- Test 1: List all database tables
SELECT name
FROM sqlite_master
WHERE type = 'table'
ORDER BY name;


-- Test 2: Find employees without a valid department
SELECT
    Employees.employee_id,
    Employees.first_name,
    Employees.last_name,
    Employees.department_id
FROM Employees
LEFT JOIN Departments
    ON Employees.department_id = Departments.department_id
WHERE Departments.department_id IS NULL;


-- Test 3: Check for duplicate employee email addresses
SELECT
    email,
    COUNT(*) AS email_count
FROM Employees
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(*) > 1;


-- Test 4: Check for negative inventory quantities
SELECT
    product_name,
    quantity
FROM Products
WHERE quantity < 0;


-- Test 5: Check database integrity
PRAGMA integrity_check;


-- Test 6: Check foreign key violations
PRAGMA foreign_key_check;
