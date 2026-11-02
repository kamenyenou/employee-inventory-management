# Employee and Inventory Management System

## Project Overview

This project is an Employee and Inventory Management System built using SQLite and SQL. It is designed to organize employee information, departments, products, and inventory transactions.

The project demonstrates how a database can help a business manage its employees and keep track of its inventory.

## Project Objectives

- Store and manage employee information.
- Organize employees by department.
- Track products and available quantities.
- Record inventory received and issued.
- Identify products that need to be reordered.
- Generate business reports using SQL queries.

## Database Tables

The database contains four main tables:

1. **Departments:** Stores department information.
2. **Employees:** Stores employee details and department assignments.
3. **Products:** Stores product names, categories, prices, and quantities.
4. **InventoryTransactions:** Records inventory received and issued by employees.

## Main Features

- Primary keys and foreign keys to organize relationships between tables.
- Unique employee email addresses.
- SQL triggers to automatically update inventory quantities.
- A trigger to prevent issuing more products than are available.
- SQL reports to summarize inventory and employee activity.
- Database testing using SQLite integrity and foreign key checks.

## Technologies Used

- SQLite
- DB Browser for SQLite
- SQL
- GitHub

## Project Files

The SQL folder contains the following scripts:

1. `01_create_tables.sql` – Creates the database tables.
2. `02_insert_data.sql` – Inserts departments, employees, and products.
3. `03_inventory_triggers.sql` – Creates inventory management triggers.
4. `04_insert_transactions.sql` – Inserts inventory transaction records.
5. `05_business_reports.sql` – Contains business reporting queries.
6. `06_database_testing.sql` – Contains database testing queries.

## How to Recreate the Database

To recreate the project in a new, empty SQLite database, run the SQL files in this order:

1. Create the tables.
2. Insert the departments, employees, and products.
3. Create the inventory triggers.
4. Insert the inventory transactions.
5. Run the business reports.
6. Run the database testing queries.

**Important:** Run these scripts only in a new, empty database. Running the insertion scripts again in an existing database will cause duplicate record errors.

## What I Learned

Through this project, I practiced creating relational database tables, inserting data, using primary and foreign keys, writing SQL queries, creating triggers, joining tables, and testing database integrity.

This project helped me improve my practical SQL and database management skills.