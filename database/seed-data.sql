-- Retail Inventory Management System
-- Sample Seed Data

-- =====================================================
-- ROLES
-- =====================================================

INSERT INTO Roles (RoleName, RoleDescription)
VALUES
('Sales Employee', 'Records customer sales transactions'),
('Inventory Employee', 'Maintains products, inventory, suppliers and replenishment'),
('Warehouse Employee', 'Supports inventory receipt and physical verification'),
('Manager', 'Reviews operational reports and KPIs'),
('System Administrator', 'Manages users, roles and administrative access');


-- =====================================================
-- USERS
-- =====================================================

INSERT INTO Users (FirstName, LastName, Email, RoleID)
VALUES
('Aisha', 'Khan', 'aisha.khan@example.com', 1),
('Daniel', 'Lee', 'daniel.lee@example.com', 2),
('Marcus', 'Brown', 'marcus.brown@example.com', 3),
('Sarah', 'Patel', 'sarah.patel@example.com', 4),
('Alex', 'Chen', 'alex.chen@example.com', 5);


-- =====================================================
-- CATEGORIES
-- =====================================================

INSERT INTO Categories (CategoryName, CategoryDescription)
VALUES
('Electronics', 'Consumer electronics and accessories'),
('Home', 'Home and household products'),
('Personal Care', 'Personal care products'),
('Office Supplies', 'Office and stationery products');


-- =====================================================
-- PRODUCTS
-- =====================================================

INSERT INTO Products
(ProductName, CategoryID, UnitPrice, CurrentQuantity, ReorderLevel)
VALUES
('Wireless Headphones', 1, 79.99, 35, 10),
('USB-C Charger', 1, 29.99, 8, 15),
('Desk Lamp', 2, 44.99, 20, 5),
('Electric Toothbrush', 3, 59.99, 12, 8),
('Notebook Pack', 4, 12.99, 50, 20),
('Wireless Mouse', 1, 39.99, 6, 10);


-- =====================================================
-- SUPPLIERS
-- =====================================================

INSERT INTO Suppliers
(SupplierName, ContactName, Email, Phone)
VALUES
('Northstar Electronics', 'Emily Wong',
 'emily@northstar.example.com', '416-555-0101'),

('Metro Wholesale', 'Jason Smith',
 'jason@metro.example.com', '905-555-0102'),

('OfficeSource Canada', 'Priya Shah',
 'priya@officesource.example.com', '647-555-0103');


-- =====================================================
-- PRODUCT-SUPPLIER RELATIONSHIPS
-- =====================================================

INSERT INTO ProductSuppliers
(ProductID, SupplierID, SupplierProductCode, UnitCost, IsPreferredSupplier)
VALUES
(1, 1, 'NS-WH-100', 45.00, 1),
(2, 1, 'NS-UC-200', 15.00, 1),
(3, 2, 'MW-DL-300', 26.00, 1),
(4, 2, 'MW-ET-400', 35.00, 1),
(5, 3, 'OS-NB-500', 6.00, 1),
(6, 1, 'NS-WM-600', 22.00, 1);


-- =====================================================
-- SALES TRANSACTIONS
-- =====================================================

INSERT INTO SalesTransactions
(TransactionDate, UserID, TotalAmount)
VALUES
('2026-08-01 10:15:00', 1, 159.98),
('2026-08-02 14:30:00', 1, 59.98),
('2026-08-03 11:00:00', 1, 97.97);


-- =====================================================
-- SALES TRANSACTION ITEMS
-- =====================================================

INSERT INTO SalesTransactionItems
(SalesTransactionID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 2, 79.99),
(2, 2, 2, 29.99),
(3, 3, 1, 44.99),
(3, 5, 1, 12.99),
(3, 6, 1, 39.99);


-- =====================================================
-- REPLENISHMENTS
-- =====================================================

INSERT INTO Replenishments
(SupplierID, ReceivedDate, UserID, Status)
VALUES
(1, '2026-08-04 09:00:00', 2, 'Received'),
(3, '2026-08-05 13:00:00', 2, 'Received');


-- =====================================================
-- REPLENISHMENT ITEMS
-- =====================================================

INSERT INTO ReplenishmentItems
(ReplenishmentID, ProductID, QuantityReceived, UnitCost)
VALUES
(1, 2, 20, 15.00),
(1, 6, 15, 22.00),
(2, 5, 50, 6.00);
