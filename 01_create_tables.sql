
-- Employee and Inventory Management System
-- Project: Database Table Creation
-- Database: SQLite

PRAGMA foreign_keys = ON;

-- Create Departments table
CREATE TABLE Departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

-- Create Employees table
CREATE TABLE Employees (
    employee_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE,
    job_title TEXT,
    department_id INTEGER,
    hire_date TEXT,
    salary REAL,
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id)
);

-- Create Products table
CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT,
    quantity INTEGER NOT NULL,
    unit_price REAL NOT NULL,
    reorder_level INTEGER NOT NULL
);

-- Create Inventory Transactions table
CREATE TABLE InventoryTransactions (
    transaction_id INTEGER PRIMARY KEY,
    product_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    transaction_type TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    transaction_date TEXT NOT NULL,
    notes TEXT,
    FOREIGN KEY (product_id)
        REFERENCES Products(product_id),
    FOREIGN KEY (employee_id)
        REFERENCES Employees(employee_id),
    CHECK (transaction_type IN ('IN', 'OUT')),
    CHECK (quantity > 0)
);
