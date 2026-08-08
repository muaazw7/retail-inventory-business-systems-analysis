# AS-IS Inventory Management Process

## Purpose
This document describes the current-state (AS-IS) inventory management process used by the fictional retail organization before implementation of the proposed centralized inventory management system.

The purpose of documenting the AS-IS process is to identify manual activities, process inefficiencies, data-quality risks, reporting limitations, and opportunities for system improvement.

## Process Participants
The current process involves the following participants:

- Sales Employee
- Inventory Employee
- Warehouse Employee
- Manager
- Supplier

## Current Process

### 1. Customer Purchase
A customer selects a product for purchase.

The Sales Employee processes the sale using the existing sales process.

Inventory information is not automatically synchronized with a centralized inventory database.

### 2. Manual Inventory Update
Following the sale, inventory quantities are manually updated in the inventory spreadsheet.

Because updates depend on manual entry, inventory records may not always reflect actual inventory levels immediately.

### 3. Inventory Review
The Inventory Employee periodically reviews the inventory spreadsheet to identify products that may require replenishment.

There is no automated low-stock notification or centralized system for identifying products below their reorder levels.

### 4. Physical Inventory Verification
When inventory information is uncertain, the Inventory Employee contacts the Warehouse Employee or manually verifies physical inventory quantities.

The spreadsheet quantity is compared with the available physical inventory.

If a discrepancy is identified, the spreadsheet must be manually corrected.

### 5. Replenishment Decision
The Inventory Employee determines whether additional inventory should be ordered based on spreadsheet quantities and physical inventory information.

If replenishment is required, the employee contacts the appropriate supplier.

### 6. Supplier Order
The Supplier receives the replenishment request and prepares the requested products.

Supplier and order information may be tracked through separate spreadsheets, emails, or other records.

### 7. Inventory Receipt
When new inventory arrives, the Warehouse Employee receives the shipment.

The Inventory Employee manually updates the inventory spreadsheet to reflect the newly received quantity.

### 8. Management Reporting
Management periodically requires information about:

- Current inventory levels
- Low-stock products
- Sales activity
- Product performance
- Inventory replenishment

Employees gather information from spreadsheets and available transaction records.

Reports are manually prepared and provided to management.

## AS-IS Process Flow

Customer purchases product

↓

Sales Employee processes transaction

↓

Inventory spreadsheet manually updated

↓

Inventory Employee periodically reviews spreadsheet

↓

Is inventory below the expected level?

**No** → Continue normal operations

**Yes** → Verify inventory quantity

↓

Contact Warehouse Employee / physically verify inventory

↓

Does spreadsheet match physical inventory?

**No** → Manually correct spreadsheet

**Yes** → Continue process

↓

Is replenishment required?

**No** → End process

**Yes** → Contact Supplier

↓

Supplier prepares and delivers inventory

↓

Warehouse Employee receives inventory

↓

Inventory spreadsheet manually updated

↓

Management reporting manually prepared

## Identified Process Issues

### PI-01: Manual Data Entry
Inventory quantities depend on manual spreadsheet updates, increasing the risk of inaccurate or outdated information.

### PI-02: Limited Real-Time Visibility
Management and employees do not have centralized real-time visibility into current inventory levels.

### PI-03: No Automated Low-Stock Identification
Employees must manually review inventory information to determine which products require replenishment.

### PI-04: Inventory Discrepancies
Spreadsheet quantities may differ from physical inventory because transactions and inventory adjustments are not automatically synchronized.

### PI-05: Manual Reporting
Management reports require employees to manually collect and prepare information from available records.

### PI-06: Disconnected Information
Inventory, supplier, sales, and reporting information may exist across separate spreadsheets, emails, and transaction records.

### PI-07: Limited Historical Analysis
Disconnected records make it more difficult to analyze historical sales, inventory movements, and product performance.

### PI-08: Process Dependency on Employees
Several activities depend on employees remembering to update spreadsheets, review inventory levels, verify discrepancies, and prepare reports.

## Improvement Opportunities
The AS-IS analysis identifies opportunities to:

- Centralize product, supplier, sales, and inventory data
- Automatically update inventory following transactions
- Automatically identify low-stock products
- Improve inventory data validation and accuracy
- Reduce manual spreadsheet management
- Provide structured historical transaction data
- Integrate operational data with Power BI
- Improve management visibility through KPI dashboards
