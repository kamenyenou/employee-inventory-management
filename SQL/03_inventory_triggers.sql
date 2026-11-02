
-- Employee and Inventory Management System
-- Project: Inventory Management Triggers
-- Database: SQLite

-- Trigger 1: Add stock when inventory is received
CREATE TRIGGER UpdateInventory_IN
AFTER INSERT ON InventoryTransactions
WHEN NEW.transaction_type = 'IN'
BEGIN
    UPDATE Products
    SET quantity = quantity + NEW.quantity
    WHERE product_id = NEW.product_id;
END;


-- Trigger 2: Reduce stock when inventory is issued
CREATE TRIGGER UpdateInventory_OUT
AFTER INSERT ON InventoryTransactions
WHEN NEW.transaction_type = 'OUT'
BEGIN
    UPDATE Products
    SET quantity = quantity - NEW.quantity
    WHERE product_id = NEW.product_id;
END;


-- Trigger 3: Prevent issuing more stock than available
CREATE TRIGGER PreventNegativeInventory
BEFORE INSERT ON InventoryTransactions
WHEN NEW.transaction_type = 'OUT'
AND (
    SELECT quantity
    FROM Products
    WHERE product_id = NEW.product_id
) < NEW.quantity
BEGIN
    SELECT RAISE(ABORT, 'Not enough inventory available!');
END;
