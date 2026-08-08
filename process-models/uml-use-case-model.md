# UML Use-Case Model

## Purpose

This document defines the primary actors and system use cases for the proposed retail inventory management system.

The UML use-case model provides a high-level view of how different user roles interact with the system and connects system functionality to the business and functional requirements defined earlier in the project.

## System Boundary

The system being modeled is:

**Retail Inventory Management System**

The system supports product management, inventory tracking, sales transactions, supplier and replenishment management, user access, historical transaction storage, and business intelligence reporting.

## Actors

### Sales Employee

The Sales Employee records customer sales transactions and views product availability required to complete sales activities.

Primary interactions:

- Authenticate User
- Search Products
- View Product Inventory
- Record Sales Transaction

### Inventory Employee

The Inventory Employee manages product, supplier, inventory, and replenishment information.

Primary interactions:

- Authenticate User
- Search Products
- View Product Inventory
- Manage Product Records
- Review Low-Stock Products
- Manage Supplier Records
- Record Inventory Replenishment

### Warehouse Employee

The Warehouse Employee supports the physical receipt and verification of supplier shipments.

Primary interactions:

- Authenticate User
- View Product Inventory
- Confirm Inventory Receipt

### Manager

The Manager uses system and reporting information to monitor operational performance and support business decisions.

Primary interactions:

- Authenticate User
- View Inventory KPIs
- View Sales Performance
- View Product Performance
- Analyze Historical Transactions
- Review Low-Stock Products

### System Administrator

The System Administrator manages system access and administrative functionality.

Primary interactions:

- Authenticate User
- Manage User Access
- Manage User Roles
- Review System Access

## Primary Use Cases

### UC-01: Authenticate User

**Primary Actors:** All system users

**Description:**  
Allows users to authenticate before accessing restricted system functionality.

**Related Requirements:**
- NFR-04
- NFR-05
- FR-15

---

### UC-02: Search Products

**Primary Actors:** Sales Employee, Inventory Employee

**Description:**  
Allows authorized users to locate product records using Product ID, product name, or category.

**Related Requirements:**
- FR-08
- US-04

---

### UC-03: View Product Inventory

**Primary Actors:** Sales Employee, Inventory Employee, Warehouse Employee

**Description:**  
Allows authorized users to view current product and inventory information.

**Related Requirements:**
- FR-02
- FR-10
- US-01

---

### UC-04: Record Sales Transaction

**Primary Actor:** Sales Employee

**Description:**  
Allows a Sales Employee to record a valid customer sales transaction.

**Related Requirements:**
- FR-03
- US-05

**Included Use Cases:**
- Validate Transaction
- Update Inventory Quantity
- Store Transaction History

---

### UC-05: Manage Product Records

**Primary Actor:** Inventory Employee

**Description:**  
Allows authorized Inventory Employees to create and update product records.

**Related Requirements:**
- FR-01
- FR-13
- US-02
- US-03

---

### UC-06: Review Low-Stock Products

**Primary Actors:** Inventory Employee, Manager

**Description:**  
Allows users to identify and review products whose current quantity falls below the configured reorder level.

**Related Requirements:**
- FR-05
- FR-10
- US-08
- US-09

---

### UC-07: Manage Supplier Records

**Primary Actor:** Inventory Employee

**Description:**  
Allows authorized users to create, update, and retrieve supplier information.

**Related Requirements:**
- FR-06
- US-10

---

### UC-08: Record Inventory Replenishment

**Primary Actor:** Inventory Employee

**Description:**  
Allows authorized users to record inventory received from suppliers.

**Related Requirements:**
- FR-07
- US-11
- US-12

**Included Use Cases:**
- Validate Replenishment
- Update Inventory Quantity
- Store Transaction History

---

### UC-09: Confirm Inventory Receipt

**Primary Actor:** Warehouse Employee

**Description:**  
Allows the Warehouse Employee to confirm that supplier inventory has been physically received and verified.

**Related Requirements:**
- FR-07
- TO-BE inventory receipt process

---

### UC-10: View Inventory KPIs

**Primary Actor:** Manager

**Description:**  
Allows management to review inventory-related KPIs through the reporting solution.

**Related Requirements:**
- FR-10
- FR-14
- US-14

---

### UC-11: View Sales Performance

**Primary Actor:** Manager

**Description:**  
Allows management to review sales performance by product and reporting period.

**Related Requirements:**
- FR-09
- FR-11
- FR-14
- US-13

---

### UC-12: View Product Performance

**Primary Actor:** Manager

**Description:**  
Allows management to compare product performance using sales and inventory information.

**Related Requirements:**
- FR-11
- FR-14
- US-15

---

### UC-13: Analyze Historical Transactions

**Primary Actor:** Manager

**Description:**  
Allows management to retrieve and analyze historical sales and inventory transaction information.

**Related Requirements:**
- FR-12
- FR-14
- US-18

---

### UC-14: Manage User Access

**Primary Actor:** System Administrator

**Description:**  
Allows authorized administrators to manage user accounts and system access.

**Related Requirements:**
- FR-15
- NFR-04
- NFR-05
- US-17

---

### UC-15: Manage User Roles

**Primary Actor:** System Administrator

**Description:**  
Allows system administrators to assign and maintain user roles and permissions.

**Related Requirements:**
- FR-15
- NFR-04
- Security Risk Assessment

## Supporting Use Cases

### UC-16: Validate Transaction

Validates required transaction information before a sales transaction is committed.

### UC-17: Validate Replenishment

Validates required replenishment information before inventory is updated.

### UC-18: Update Inventory Quantity

Automatically adjusts inventory quantities following valid sales or replenishment transactions.

### UC-19: Store Transaction History

Stores completed transaction information for future reporting and business analysis.

## Use-Case Relationships

The following UML relationships are used in the model.

### Record Sales Transaction

`Record Sales Transaction`

**<<include>>**

- Validate Transaction
- Update Inventory Quantity
- Store Transaction History

### Record Inventory Replenishment

`Record Inventory Replenishment`

**<<include>>**

- Validate Replenishment
- Update Inventory Quantity
- Store Transaction History

These relationships indicate that the included functions are required parts of the primary use cases.

## Actor-to-Use-Case Summary

| Actor | Use Cases |
|---|---|
| Sales Employee | Authenticate User, Search Products, View Product Inventory, Record Sales Transaction |
| Inventory Employee | Authenticate User, Search Products, View Product Inventory, Manage Product Records, Review Low-Stock Products, Manage Supplier Records, Record Inventory Replenishment |
| Warehouse Employee | Authenticate User, View Product Inventory, Confirm Inventory Receipt |
| Manager | Authenticate User, Review Low-Stock Products, View Inventory KPIs, View Sales Performance, View Product Performance, Analyze Historical Transactions |
| System Administrator | Authenticate User, Manage User Access, Manage User Roles |

## Conclusion

The UML use-case model provides a high-level representation of the interactions between system users and the proposed retail inventory management system.

The model supports requirements validation by demonstrating that major functional requirements are associated with identifiable users and business activities.
