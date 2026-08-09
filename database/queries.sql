-- Retail Inventory Management System
-- Business Analysis Queries


-- =====================================================
-- 1. CURRENT INVENTORY
-- =====================================================

SELECT
    p.ProductID,
    p.ProductName,
    c.CategoryName,
    p.CurrentQuantity,
    p.ReorderLevel,
    p.UnitPrice
FROM Products p
JOIN Categories c
    ON p.CategoryID = c.CategoryID
ORDER BY p.ProductName;


-- =====================================================
-- 2. LOW-STOCK PRODUCTS
-- =====================================================

SELECT
    p.ProductID,
    p.ProductName,
    p.CurrentQuantity,
    p.ReorderLevel,
    p.ReorderLevel - p.CurrentQuantity AS UnitsBelowReorderLevel
FROM Products p
WHERE p.CurrentQuantity < p.ReorderLevel
ORDER BY UnitsBelowReorderLevel DESC;


-- =====================================================
-- 3. LOW-STOCK PRODUCTS WITH PREFERRED SUPPLIER
-- =====================================================

SELECT
    p.ProductID,
    p.ProductName,
    p.CurrentQuantity,
    p.ReorderLevel,
    s.SupplierName,
    ps.UnitCost
FROM Products p
JOIN ProductSuppliers ps
    ON p.ProductID = ps.ProductID
JOIN Suppliers s
    ON ps.SupplierID = s.SupplierID
WHERE p.CurrentQuantity < p.ReorderLevel
  AND ps.IsPreferredSupplier = 1
ORDER BY p.ProductName;


-- =====================================================
-- 4. SALES BY PRODUCT
-- =====================================================

SELECT
    p.ProductID,
    p.ProductName,
    SUM(sti.Quantity) AS UnitsSold,
    SUM(sti.Quantity * sti.UnitPrice) AS SalesRevenue
FROM SalesTransactionItems sti
JOIN Products p
    ON sti.ProductID = p.ProductID
GROUP BY
    p.ProductID,
    p.ProductName
ORDER BY SalesRevenue DESC;


-- =====================================================
-- 5. SALES BY CATEGORY
-- =====================================================

SELECT
    c.CategoryName,
    SUM(sti.Quantity) AS UnitsSold,
    SUM(sti.Quantity * sti.UnitPrice) AS SalesRevenue
FROM SalesTransactionItems sti
JOIN Products p
    ON sti.ProductID = p.ProductID
JOIN Categories c
    ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY SalesRevenue DESC;


-- =====================================================
-- 6. DAILY SALES PERFORMANCE
-- =====================================================

SELECT
    CAST(st.TransactionDate AS DATE) AS SalesDate,
    COUNT(DISTINCT st.SalesTransactionID) AS NumberOfTransactions,
    SUM(sti.Quantity) AS UnitsSold,
    SUM(sti.Quantity * sti.UnitPrice) AS SalesRevenue
FROM SalesTransactions st
JOIN SalesTransactionItems sti
    ON st.SalesTransactionID = sti.SalesTransactionID
GROUP BY CAST(st.TransactionDate AS DATE)
ORDER BY SalesDate;


-- =====================================================
-- 7. CURRENT INVENTORY RETAIL VALUE
-- =====================================================

SELECT
    SUM(CurrentQuantity * UnitPrice) AS CurrentInventoryRetailValue
FROM Products;


-- =====================================================
-- 8. INVENTORY VALUE BY PRODUCT
-- =====================================================

SELECT
    ProductID,
    ProductName,
    CurrentQuantity,
    UnitPrice,
    CurrentQuantity * UnitPrice AS InventoryRetailValue
FROM Products
ORDER BY InventoryRetailValue DESC;


-- =====================================================
-- 9. REPLENISHMENT HISTORY
-- =====================================================

SELECT
    r.ReplenishmentID,
    r.ReceivedDate,
    s.SupplierName,
    p.ProductName,
    ri.QuantityReceived,
    ri.UnitCost,
    ri.QuantityReceived * ri.UnitCost AS ReplenishmentCost
FROM Replenishments r
JOIN Suppliers s
    ON r.SupplierID = s.SupplierID
JOIN ReplenishmentItems ri
    ON r.ReplenishmentID = ri.ReplenishmentID
JOIN Products p
    ON ri.ProductID = p.ProductID
ORDER BY r.ReceivedDate DESC;


-- =====================================================
-- 10. SUPPLIER ACTIVITY
-- =====================================================

SELECT
    s.SupplierID,
    s.SupplierName,
    COUNT(DISTINCT r.ReplenishmentID) AS ReplenishmentCount,
    COALESCE(SUM(ri.QuantityReceived), 0) AS UnitsReceived,
    COALESCE(SUM(ri.QuantityReceived * ri.UnitCost), 0) AS TotalReplenishmentCost
FROM Suppliers s
LEFT JOIN Replenishments r
    ON s.SupplierID = r.SupplierID
LEFT JOIN ReplenishmentItems ri
    ON r.ReplenishmentID = ri.ReplenishmentID
GROUP BY
    s.SupplierID,
    s.SupplierName
ORDER BY TotalReplenishmentCost DESC;


-- =====================================================
-- 11. ESTIMATED PRODUCT PROFITABILITY
-- =====================================================

SELECT
    p.ProductID,
    p.ProductName,
    SUM(sti.Quantity) AS UnitsSold,
    SUM(sti.Quantity * sti.UnitPrice) AS SalesRevenue,
    SUM(sti.Quantity * ps.UnitCost) AS EstimatedProductCost,
    SUM(sti.Quantity * (sti.UnitPrice - ps.UnitCost)) AS EstimatedGrossProfit
FROM SalesTransactionItems sti
JOIN Products p
    ON sti.ProductID = p.ProductID
JOIN ProductSuppliers ps
    ON p.ProductID = ps.ProductID
   AND ps.IsPreferredSupplier = 1
GROUP BY
    p.ProductID,
    p.ProductName
ORDER BY EstimatedGrossProfit DESC;


-- =====================================================
-- 12. PRODUCT PERFORMANCE SUMMARY
-- =====================================================

SELECT
    p.ProductID,
    p.ProductName,
    p.CurrentQuantity,
    p.ReorderLevel,
    COALESCE(SUM(sti.Quantity), 0) AS UnitsSold,
    COALESCE(SUM(sti.Quantity * sti.UnitPrice), 0) AS SalesRevenue,
    CASE
        WHEN p.CurrentQuantity < p.ReorderLevel THEN 'Low Stock'
        ELSE 'Adequate Stock'
    END AS InventoryStatus
FROM Products p
LEFT JOIN SalesTransactionItems sti
    ON p.ProductID = sti.ProductID
GROUP BY
    p.ProductID,
    p.ProductName,
    p.CurrentQuantity,
    p.ReorderLevel
ORDER BY SalesRevenue DESC;
