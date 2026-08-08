# User Acceptance Testing (UAT) Test Cases

## Purpose

This document defines User Acceptance Testing (UAT) test cases for the proposed retail inventory management system.

The purpose of UAT is to validate that the completed system satisfies documented business requirements, functional requirements, user stories, and acceptance criteria from an end-user perspective.

Each test case is linked to relevant requirements and user stories to support end-to-end requirements traceability.

## Test Status Values

The following statuses are used:

- Not Started
- Pass
- Fail
- Blocked

Because this project represents a simulated system implementation, test results will initially remain **Not Started** until the related system components are developed and validated.

---

## UAT-001: View Current Product Inventory

**Related Business Requirement:** BR-02  
**Related Functional Requirements:** FR-02, FR-08  
**Related User Story:** US-01

### Objective

Verify that an authorized Inventory Employee can view the current inventory quantity and required information for a product.

### Preconditions

- User is authenticated
- Product record exists
- Product inventory information exists

### Test Steps

1. Log into the inventory management system.
2. Navigate to the product inventory section.
3. Search for an existing product.
4. Open the product record.
5. Review the displayed inventory information.

### Expected Result

The system displays:

- Product ID
- Product name
- Product category
- Current inventory quantity
- Reorder level
- Supplier information where available

### Status

Not Started

---

## UAT-002: Create New Product Record

**Related Business Requirement:** BR-01  
**Related Functional Requirement:** FR-01  
**Related User Story:** US-02

### Objective

Verify that an authorized Inventory Employee can create a valid product record.

### Preconditions

- User is authenticated
- User has permission to maintain product records

### Test Steps

1. Navigate to product management.
2. Select the option to create a new product.
3. Enter all required product information.
4. Submit the product record.
5. Search for the newly created product.

### Expected Result

The product is successfully created and can be retrieved from the system.

The stored record contains all submitted required information.

### Status

Not Started

---

## UAT-003: Reject Incomplete Product Record

**Related Business Requirement:** BR-07  
**Related Functional Requirement:** FR-13  
**Related User Story:** US-16

### Objective

Verify that the system prevents incomplete required information from being stored.

### Preconditions

- User is authenticated
- User has product-maintenance permission

### Test Steps

1. Navigate to product management.
2. Select the option to create a new product.
3. Leave at least one mandatory field empty.
4. Submit the record.

### Expected Result

The system rejects the submission.

The user receives a validation message identifying the missing or invalid required information.

No incomplete product record is committed.

### Status

Not Started

---

## UAT-004: Record Valid Sales Transaction

**Related Business Requirements:** BR-01, BR-05  
**Related Functional Requirement:** FR-03  
**Related User Story:** US-05

### Objective

Verify that an authorized Sales Employee can record a valid sales transaction.

### Preconditions

- User is authenticated
- Product exists
- Sufficient inventory is available

### Test Steps

1. Navigate to sales transaction entry.
2. Select an existing product.
3. Enter the quantity sold.
4. Confirm the unit price.
5. Submit the transaction.
6. Retrieve the transaction record.

### Expected Result

The sales transaction is successfully stored.

The transaction includes:

- Transaction ID
- Product ID
- Quantity sold
- Unit price
- Transaction date

### Status

Not Started

---

## UAT-005: Automatically Reduce Inventory After Sale

**Related Business Requirements:** BR-01, BR-07  
**Related Functional Requirement:** FR-04  
**Related User Story:** US-06

### Objective

Verify that product inventory automatically decreases after a valid sales transaction.

### Preconditions

- Product exists
- Current quantity is known
- Valid sales transaction can be recorded

### Test Data

Current inventory quantity: 50 units  
Sales quantity: 5 units

### Test Steps

1. Confirm that the current quantity is 50.
2. Record a valid sale of 5 units.
3. Complete the transaction.
4. Retrieve the product record.
5. Review the updated inventory quantity.

### Expected Result

The updated inventory quantity is:

50 - 5 = **45 units**

No separate manual inventory adjustment is required.

### Status

Not Started

---

## UAT-006: Identify Low-Stock Product

**Related Business Requirement:** BR-04  
**Related Functional Requirement:** FR-05  
**Related User Story:** US-08

### Objective

Verify that the system identifies a product when its current quantity falls below its configured reorder level.

### Test Data

Current quantity: 5 units  
Reorder level: 10 units

### Test Steps

1. Confirm the product reorder level is 10.
2. Confirm the current inventory quantity is 5.
3. Run or refresh the low-stock evaluation.
4. Review the product's inventory status.

### Expected Result

The product is identified as low stock because:

5 < 10

### Status

Not Started

---

## UAT-007: Exclude Adequately Stocked Product from Low-Stock Report

**Related Business Requirement:** BR-04  
**Related Functional Requirements:** FR-05, FR-10  
**Related User Story:** US-09

### Objective

Verify that products at or above their reorder levels do not appear on the low-stock report.

### Test Data

Current quantity: 15 units  
Reorder level: 10 units

### Test Steps

1. Confirm the product quantity is 15.
2. Confirm the reorder level is 10.
3. Open the low-stock report.
4. Search for the product.

### Expected Result

The product does not appear on the low-stock report because the current quantity is not below the reorder level.

### Status

Not Started

---

## UAT-008: Record Inventory Replenishment

**Related Business Requirements:** BR-01, BR-06  
**Related Functional Requirement:** FR-07  
**Related User Story:** US-11

### Objective

Verify that an authorized Inventory Employee can record inventory received from a supplier.

### Preconditions

- Product exists
- Supplier exists
- User has appropriate permission

### Test Steps

1. Navigate to inventory replenishment.
2. Select the supplier.
3. Select the product.
4. Enter the quantity received.
5. Enter the transaction date.
6. Submit the replenishment transaction.
7. Retrieve the stored replenishment record.

### Expected Result

The replenishment transaction is stored and associated with the correct product and supplier.

### Status

Not Started

---

## UAT-009: Automatically Increase Inventory After Replenishment

**Related Business Requirements:** BR-01, BR-07  
**Related Functional Requirement:** FR-07  
**Related User Story:** US-12

### Objective

Verify that inventory automatically increases after a valid replenishment transaction.

### Test Data

Current inventory quantity: 20 units  
Quantity received: 30 units

### Test Steps

1. Confirm current inventory is 20.
2. Record a replenishment of 30 units.
3. Complete the transaction.
4. Retrieve the updated product record.
5. Review the inventory quantity.

### Expected Result

The new inventory quantity is:

20 + 30 = **50 units**

### Status

Not Started

---

## UAT-010: Search for Product

**Related Business Requirement:** BR-02  
**Related Functional Requirement:** FR-08  
**Related User Story:** US-04

### Objective

Verify that users can search for product information.

### Preconditions

Multiple product records exist.

### Test Steps

1. Navigate to product search.
2. Search using a valid Product ID.
3. Review results.
4. Search using a product name.
5. Review results.
6. Search using a product category.
7. Review results.

### Expected Result

Relevant matching product records are returned for each valid search method.

### Status

Not Started

---

## UAT-011: View Sales Performance Reporting

**Related Business Requirements:** BR-03, BR-09  
**Related Functional Requirements:** FR-09, FR-11  
**Related User Story:** US-13

### Objective

Verify that management can analyze sales performance using historical transaction data.

### Preconditions

- Historical sales data exists
- Reporting dataset is available

### Test Steps

1. Open the sales-performance report.
2. Select a reporting period.
3. Review sales by product.
4. Review quantity sold.
5. Review sales value.
6. Change the reporting period.

### Expected Result

The report correctly displays sales information for the selected reporting period and updates appropriately when the reporting period changes.

### Status

Not Started

---

## UAT-012: View Inventory KPI Dashboard

**Related Business Requirements:** BR-03, BR-09  
**Related Functional Requirements:** FR-10, FR-14  
**Related User Story:** US-14

### Objective

Verify that management can view required inventory KPIs.

### Preconditions

- Inventory data exists
- Power BI reporting dataset is available

### Test Steps

1. Open the inventory dashboard.
2. Review displayed KPIs.
3. Compare selected KPI values with underlying source data.
4. Apply available reporting filters.
5. Confirm dashboard values update correctly.

### Expected Result

The dashboard provides accurate inventory-related KPI information.

Potential KPIs include:

- Current inventory units
- Number of low-stock products
- Inventory value
- Replenishment activity
- Inventory turnover

### Status

Not Started

---

## UAT-013: Restrict Unauthorized Administrative Access

**Related Functional Requirement:** FR-15  
**Related Non-Functional Requirements:** NFR-04, NFR-05  
**Related User Story:** US-17

### Objective

Verify that users without administrative permission cannot access restricted functionality.

### Preconditions

- Standard non-administrative user account exists
- Restricted administrative functionality exists

### Test Steps

1. Log in using a standard user account.
2. Attempt to access restricted administrative functionality.
3. Observe the system response.

### Expected Result

Access is denied.

The user cannot perform unauthorized administrative actions.

### Status

Not Started

---

## UAT-014: Retrieve Historical Transactions

**Related Business Requirement:** BR-05  
**Related Functional Requirement:** FR-12  
**Related User Stories:** US-07, US-18

### Objective

Verify that historical transactions remain available for business analysis.

### Preconditions

Historical sales and inventory transactions exist.

### Test Steps

1. Navigate to historical transaction reporting.
2. Select a previous reporting period.
3. Retrieve transaction records.
4. Review sales information.
5. Review inventory transaction information.

### Expected Result

Historical transactions from the selected period remain available and can be used for reporting and analysis.

### Status

Not Started

---

## UAT-015: Validate Reporting Data Against Source Records

**Related Business Requirements:** BR-03, BR-09  
**Related Functional Requirement:** FR-14  
**Related Non-Functional Requirement:** NFR-10

### Objective

Verify that Power BI reporting accurately reflects underlying system data.

### Preconditions

- Reporting solution is available
- Source SQL data is available

### Test Steps

1. Select a KPI displayed in Power BI.
2. Record the displayed value.
3. Query the corresponding source data in SQL.
4. Calculate the expected KPI value.
5. Compare the SQL result with the Power BI result.

### Expected Result

The Power BI KPI matches the validated source-data result.

Any discrepancy is documented and investigated before reporting is approved.

### Status

Not Started

---

# UAT Entry Criteria

UAT should begin only after:

- Required functionality has been developed
- Critical functional defects have been resolved
- Test environment is available
- Required test data is available
- User stories and acceptance criteria are defined
- UAT participants understand the expected business process

# UAT Exit Criteria

UAT may be considered complete when:

- All Must Have user stories have been tested
- Critical UAT test cases have passed
- No unresolved critical defects remain
- Failed tests have been investigated
- Approved corrections have been retested
- Requirements traceability has been reviewed
- Business stakeholders approve the solution for deployment

# Defect Handling

If a UAT test fails:

1. Record the failed test case.
2. Document the actual result.
3. Describe the defect.
4. Assign a severity.
5. Investigate the cause.
6. Correct the issue.
7. Retest the affected functionality.
8. Update the final test status.
9. Confirm whether related requirements or documentation require changes.
