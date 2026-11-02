
-- Employee and Inventory Management System
-- Project: Inventory Transaction Records
-- Database: SQLite

PRAGMA foreign_keys = ON;

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
