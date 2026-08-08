# Retail Inventory Database Design

## Purpose

This document defines the proposed relational database design for the Retail Inventory Management System.

The database design translates business requirements, functional requirements, user stories, and system processes into structured entities, attributes, relationships, and business rules.

The database will support:

- Product management
- Supplier management
- Inventory tracking
- Sales transactions
- Inventory replenishment
- Historical transaction analysis
- Low-stock monitoring
- Business intelligence reporting

## Database Platform

The proposed database platform is:

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

The database follows a normalized relational design to reduce data duplication and maintain data integrity.

## Core Entities

The proposed database contains the following primary entities:

1. Users
2. Roles
3. Products
4. Categories
5. Suppliers
6. ProductSuppliers
7. SalesTransactions
8. SalesTransactionItems
9. Replenishments
10. ReplenishmentItems

## Entity Overview

### Users

Stores system users who access the inventory management system.

Key information includes:

- User ID
- First Name
- Last Name
- Email
- Role ID
- Account Status
- Created Date

### Roles

Defines system roles used for role-based access control.

Example roles include:

- Sales Employee
- Inventory Employee
- Warehouse Employee
- Manager
- System Administrator

### Products

Stores information about products managed by the organization.

Key information includes:

- Product ID
- Product Name
- Category ID
- Unit Price
- Current Quantity
- Reorder Level
- Active Status

### Categories

Stores product categories.

Examples may include:

- Electronics
- Home
- Personal Care
- Office Supplies

Separating categories into their own table reduces repeated category values within the Products table.

### Suppliers

Stores supplier information.

Key information includes:

- Supplier ID
- Supplier Name
- Contact Name
- Email
- Phone
- Active Status

### ProductSuppliers

Associates products with suppliers.

A product may be supplied by multiple suppliers, and a supplier may provide multiple products.

This creates a many-to-many relationship between Products and Suppliers.

### SalesTransactions

Stores the header information for each completed sales transaction.

Key information includes:

- Sales Transaction ID
- Transaction Date
- User ID
- Total Amount

### SalesTransactionItems

Stores individual products included within each sales transaction.

Key information includes:

- Sales Transaction Item ID
- Sales Transaction ID
- Product ID
- Quantity
- Unit Price

Separating transaction headers from transaction items allows one sales transaction to contain multiple products.

### Replenishments

Stores supplier replenishment transaction header information.

Key information includes:

- Replenishment ID
- Supplier ID
- Received Date
- User ID
- Status

### ReplenishmentItems

Stores individual products received as part of each replenishment.

Key information includes:

- Replenishment Item ID
- Replenishment ID
- Product ID
- Quantity Received
- Unit Cost

## Proposed Tables

### Roles

| Column | Data Type | Key | Description |
|---|---|---|---|
| RoleID | INT | PK | Unique role identifier |
| RoleName | VARCHAR(50) | | Role name |
| RoleDescription | VARCHAR(255) | | Description of role |

### Users

| Column | Data Type | Key | Description |
|---|---|---|---|
| UserID | INT | PK | Unique user identifier |
| FirstName | VARCHAR(50) | | User first name |
| LastName | VARCHAR(50) | | User last name |
| Email | VARCHAR(100) | UNIQUE | User email |
| RoleID | INT | FK | References Roles |
| IsActive | BIT | | Account status |
| CreatedDate | DATETIME | | Account creation date |

### Categories

| Column | Data Type | Key | Description |
|---|---|---|---|
| CategoryID | INT | PK | Unique category identifier |
| CategoryName | VARCHAR(100) | UNIQUE | Product category |
| CategoryDescription | VARCHAR(255) | | Category description |

### Products

| Column | Data Type | Key | Description |
|---|---|---|---|
| ProductID | INT | PK | Unique product identifier |
| ProductName | VARCHAR(150) | | Product name |
| CategoryID | INT | FK | References Categories |
| UnitPrice | DECIMAL(10,2) | | Product selling price |
| CurrentQuantity | INT | | Current available inventory |
| ReorderLevel | INT | | Quantity threshold for low-stock identification |
| IsActive | BIT | | Product status |

### Suppliers

| Column | Data Type | Key | Description |
|---|---|---|---|
| SupplierID | INT | PK | Unique supplier identifier |
| SupplierName | VARCHAR(150) | | Supplier name |
| ContactName | VARCHAR(100) | | Primary supplier contact |
| Email | VARCHAR(100) | | Supplier email |
| Phone | VARCHAR(25) | | Supplier phone |
| IsActive | BIT | | Supplier status |

### ProductSuppliers

| Column | Data Type | Key | Description |
|---|---|---|---|
| ProductID | INT | PK, FK | References Products |
| SupplierID | INT | PK, FK | References Suppliers |
| SupplierProductCode | VARCHAR(50) | | Supplier-specific product reference |
| UnitCost | DECIMAL(10,2) | | Supplier cost |
| IsPreferredSupplier | BIT | | Preferred supplier indicator |

The composite primary key is:

`ProductID + SupplierID`

### SalesTransactions

| Column | Data Type | Key | Description |
|---|---|---|---|
| SalesTransactionID | INT | PK | Unique sales transaction |
| TransactionDate | DATETIME | | Transaction date and time |
| UserID | INT | FK | Employee recording transaction |
| TotalAmount | DECIMAL(12,2) | | Total transaction value |

### SalesTransactionItems

| Column | Data Type | Key | Description |
|---|---|---|---|
| SalesTransactionItemID | INT | PK | Unique transaction-line identifier |
| SalesTransactionID | INT | FK | References SalesTransactions |
| ProductID | INT | FK | References Products |
| Quantity | INT | | Quantity sold |
| UnitPrice | DECIMAL(10,2) | | Selling price at transaction time |

### Replenishments

| Column | Data Type | Key | Description |
|---|---|---|---|
| ReplenishmentID | INT | PK | Unique replenishment transaction |
| SupplierID | INT | FK | References Suppliers |
| ReceivedDate | DATETIME | | Date inventory was received |
| UserID | INT | FK | Employee recording replenishment |
| Status | VARCHAR(30) | | Replenishment status |

### ReplenishmentItems

| Column | Data Type | Key | Description |
|---|---|---|---|
| ReplenishmentItemID | INT | PK | Unique replenishment line |
| ReplenishmentID | INT | FK | References Replenishments |
| ProductID | INT | FK | References Products |
| QuantityReceived | INT | | Quantity received |
| UnitCost | DECIMAL(10,2) | | Product cost at receipt |

## Primary Key Relationships

Each primary entity contains a unique primary key.

Examples:

- Roles.RoleID
- Users.UserID
- Categories.CategoryID
- Products.ProductID
- Suppliers.SupplierID
- SalesTransactions.SalesTransactionID
- SalesTransactionItems.SalesTransactionItemID
- Replenishments.ReplenishmentID
- ReplenishmentItems.ReplenishmentItemID

ProductSuppliers uses a composite primary key consisting of:

- ProductID
- SupplierID

## Foreign Key Relationships

The proposed foreign-key relationships are:

```text
Roles.RoleID
    ↓
Users.RoleID
