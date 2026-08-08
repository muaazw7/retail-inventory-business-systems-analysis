# TO-BE Inventory Management Process

## Purpose
This document describes the future-state (TO-BE) inventory management process following implementation of the proposed centralized retail inventory management system.

The redesigned process addresses issues identified during AS-IS analysis by centralizing operational data, automating inventory updates, improving low-stock identification, standardizing replenishment activities, and providing structured data for management reporting.

## Process Participants
The future process involves the following participants:

- Sales Employee
- Inventory Employee
- Warehouse Employee
- Manager
- Supplier
- Inventory Management System
- Power BI

## Future-State Process

### 1. Customer Purchase
A customer selects a product for purchase.

The Sales Employee processes the transaction through the centralized system.

The system validates the product and transaction information before the transaction is recorded.

### 2. Automatic Inventory Update
After a valid sales transaction is recorded, the Inventory Management System automatically reduces the available inventory quantity for the purchased product.

The transaction is retained as part of the organization's historical sales data.

### 3. Inventory Level Evaluation
The system compares the updated inventory quantity with the product's configured reorder level.

### 4. Low-Stock Identification
If the available quantity remains at or above the reorder level, no replenishment action is required.

If the available quantity falls below the reorder level, the system identifies the product as low stock.

The product becomes visible to authorized users through the low-stock reporting process.

### 5. Inventory Review
The Inventory Employee reviews products identified as low stock.

Current product quantities, reorder levels, and supplier information are available through the centralized system.

### 6. Replenishment Decision
The Inventory Employee determines whether replenishment is required.

If replenishment is not required, no supplier order is initiated.

If replenishment is required, the Inventory Employee initiates the replenishment process using the supplier information maintained in the system.

### 7. Supplier Order
The Supplier receives the replenishment request and prepares the requested inventory.

The replenishment activity is associated with the relevant supplier and product information.

### 8. Inventory Receipt
The Warehouse Employee receives the supplier shipment.

The received quantity is verified against the expected replenishment information.

### 9. Replenishment Recording
An authorized employee records the received inventory in the centralized system.

The system validates the replenishment transaction and increases the available inventory quantity.

### 10. Historical Data Storage
Sales and replenishment transactions remain stored in the centralized database.

This provides structured historical information for operational reporting and future business analysis.

### 11. Business Intelligence Reporting
Structured sales, product, supplier, and inventory data is made available for Power BI reporting.

Management can monitor KPIs including:

- Current inventory levels
- Low-stock products
- Sales activity
- Product performance
- Inventory replenishment activity
- Inventory turnover

## TO-BE Process Flow
Customer purchases product

↓

Sales Employee records transaction in centralized system

↓

System validates transaction

↓

Is transaction valid?

**No** → Display validation error → Correct transaction information

**Yes** → Record sales transaction

↓

Automatically reduce inventory quantity

↓

Store transaction history

↓

Compare current quantity with reorder level

↓

Is current quantity below reorder level?

**No** → Continue normal operations

**Yes** → Flag product as low stock

↓

Inventory Employee reviews low-stock product

↓

Is replenishment required?

**No** → End replenishment process

**Yes** → Initiate supplier replenishment

↓

Supplier prepares and delivers inventory

↓

Warehouse Employee receives and verifies shipment

↓

Authorized employee records replenishment

↓

System validates replenishment transaction

↓

Automatically increase inventory quantity

↓

Store replenishment history

↓

Updated data available for Power BI reporting

↓

Management reviews operational KPIs

## AS-IS vs TO-BE Improvements
| AS-IS Process | TO-BE Process |
|---|---|
| Inventory quantities manually updated in spreadsheets | Inventory automatically updated following recorded transactions |
| Employees manually review spreadsheets for low inventory | System identifies products below configured reorder levels |
| Inventory information exists across disconnected records | Product, supplier, sales, and inventory information is centralized |
| Inventory discrepancies may require manual investigation | Transaction validation and structured records improve data consistency |
| Supplier information may exist in separate records | Supplier information is associated with products in the centralized system |
| Historical information is difficult to consolidate | Sales and replenishment transactions are retained in structured historical records |
| Reports are manually assembled | Structured data is available for Power BI reporting |
| Management has limited operational visibility | Management can monitor inventory and sales KPIs through dashboards |

## Expected Business Benefits

### EB-01: Improved Inventory Accuracy
Automatic inventory updates reduce dependence on manual spreadsheet updates and improve the consistency of inventory information.

### EB-02: Faster Low-Stock Identification
Products below their configured reorder levels can be identified systematically instead of relying on periodic spreadsheet review.

### EB-03: Improved Operational Visibility
Centralized data provides employees and management with improved visibility into inventory, sales, supplier, and replenishment information.

### EB-04: Reduced Manual Work
Automation reduces repetitive spreadsheet updates and manual reporting activities.

### EB-05: Improved Reporting
Structured operational data supports standardized Power BI dashboards and KPI reporting.

### EB-06: Better Historical Analysis
Stored transaction history enables analysis of sales trends, inventory movements, replenishment activity, and product performance.

### EB-07: Improved Scalability

A structured centralized system provides a stronger foundation for increasing transaction volumes, product records, suppliers, and reporting requirements.
