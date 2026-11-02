
-- Employee and Inventory Management System
-- Project: Sample Data Insertion
-- Database: SQLite

PRAGMA foreign_keys = ON;

-- Insert departments
INSERT INTO Departments
(department_id, department_name)
VALUES
(1, 'Human Resources'),
(2, 'Information Technology'),
(3, 'Finance'),
(4, 'Operations'),
(5, 'Customer Service');

-- Insert employees
INSERT INTO Employees
(employee_id, first_name, last_name, email,
 job_title, department_id, hire_date, salary)
VALUES
(1, 'John', 'Smith', 'john@company.com',
 'HR Specialist', 1, '2025-01-15', 45000),

(2, 'Mary', 'Johnson', 'mary@company.com',
 'Database Administrator', 2, '2024-06-10', 65000),

(3, 'David', 'Brown', 'david@company.com',
 'Financial Analyst', 3, '2023-09-20', 58000),

(4, 'Sarah', 'Wilson', 'sarah@company.com',
 'Operations Manager', 4, '2024-02-05', 62000),

(5, 'Michael', 'Davis', 'michael@company.com',
 'Customer Service Representative', 5, '2025-03-12', 40000);

-- Insert products
INSERT INTO Products
(product_id, product_name, category, quantity,
 unit_price, reorder_level)
VALUES
(1, 'Laptop', 'Electronics', 15, 850.00, 5),
(2, 'Keyboard', 'Accessories', 40, 25.00, 10),
(3, 'Mouse', 'Accessories', 50, 15.00, 10),
(4, 'Monitor', 'Electronics', 8, 180.00, 5),
(5, 'Printer', 'Office Equipment', 4, 220.00, 5),
(6, 'Office Chair', 'Furniture', 12, 150.00, 4),
(7, 'Desk', 'Furniture', 3, 275.00, 5);

-- Insert inventory transactions
INSERT INTO InventoryTransactions
(transaction_id, product_id, employee_id,
 transaction_type, quantity, transaction_date, notes)
VALUES
(1, 1, 2, 'IN', 10, '2026-10-01', 'New laptop delivery'),
(2, 2, 4, 'OUT', 5, '2026-10-02', 'Office equipment issued'),
(3, 3, 4, 'OUT', 8, '2026-10-03', 'Mouse distribution'),
(4, 4, 2, 'IN', 5, '2026-10-04', 'New monitor delivery'),
(5, 5, 4, 'OUT', 2, '2026-10-05', 'Printer distribution'),
(6, 1, 2, 'IN', 5, '2026-11-02', 'New laptop delivery'),
(7, 1, 2, 'OUT', 3, '2026-11-02', 'Laptop issued');
