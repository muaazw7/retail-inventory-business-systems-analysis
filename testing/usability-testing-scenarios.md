# Usability Testing Scenarios

## Purpose

This document defines usability testing scenarios for the proposed retail inventory management system.

The objective of usability testing is to evaluate whether representative users can complete common business tasks efficiently, accurately, and with minimal confusion.

Unlike functional testing, which determines whether a system behaves according to documented requirements, usability testing focuses on how easily users can interact with the system.

## Testing Objectives

Usability testing will evaluate:

- Ease of navigation
- Clarity of labels and instructions
- Task completion efficiency
- User understanding of system feedback
- Error prevention and recovery
- Consistency of workflows
- Accessibility of important information
- Overall user confidence when completing business tasks

## Representative User Roles

The following user roles are included in usability testing:

- Sales Employee
- Inventory Employee
- Warehouse Employee
- Manager

## Usability Metrics

The following metrics may be recorded during testing:

| Metric | Description |
|---|---|
| Task Completion Rate | Percentage of users who successfully complete the task |
| Time on Task | Time required to complete the assigned activity |
| Error Count | Number of user errors during task completion |
| Assistance Required | Whether the user required help |
| Navigation Issues | Number of times the user became uncertain about where to go |
| User Satisfaction | User rating of task difficulty and overall experience |

## Rating Scale

Users may rate task difficulty using the following scale:

1. Very Difficult
2. Difficult
3. Neutral
4. Easy
5. Very Easy

---

## UT-01: Find Current Inventory Quantity

### User Role

Inventory Employee

### Objective

Determine whether an Inventory Employee can quickly locate the current inventory quantity for a specific product.

### Scenario

You need to determine how many units of a product are currently available before deciding whether additional inventory is required.

### Task

1. Open the inventory management system.
2. Locate the requested product.
3. Identify its current inventory quantity.
4. Identify its reorder level.

### Success Criteria

The user successfully locates:

- Product record
- Current inventory quantity
- Reorder level

without assistance.

### Metrics

- Task completion
- Time on task
- Number of incorrect navigation attempts
- Assistance required
- User difficulty rating

---

## UT-02: Identify Low-Stock Products

### User Role

Inventory Employee

### Objective

Determine whether users can identify products requiring replenishment without manually reviewing individual product records.

### Scenario

You are beginning your inventory review and need to determine which products are currently below their reorder levels.

### Task

1. Navigate to the appropriate inventory reporting area.
2. Locate the low-stock report.
3. Identify the products requiring replenishment.
4. Review their current quantities and reorder levels.

### Success Criteria

The user can locate the low-stock report and correctly identify products below their reorder levels.

### Usability Questions

- Was the low-stock report easy to locate?
- Were low-stock products clearly identifiable?
- Was the information required for replenishment decisions visible?
- Was any terminology unclear?

---

## UT-03: Record a Sales Transaction

### User Role

Sales Employee

### Objective

Determine whether a Sales Employee can record a transaction without unnecessary steps or confusion.

### Scenario

A customer purchases five units of an existing product.

### Task

1. Navigate to sales transaction entry.
2. Locate the correct product.
3. Enter a quantity of five units.
4. Verify transaction information.
5. Submit the sale.

### Success Criteria

The user completes the transaction successfully without assistance.

### Observe

The tester should observe whether the user:

- Understands which fields are required
- Can locate the product easily
- Understands how to submit the transaction
- Receives clear confirmation after submission
- Makes any data-entry errors

---

## UT-04: Correct Invalid Transaction Information

### User Role

Sales Employee

### Objective

Evaluate whether system validation messages help users identify and correct invalid information.

### Scenario

You attempt to submit a sales transaction with required information missing.

### Task

1. Begin creating a sales transaction.
2. Leave a required field empty.
3. Attempt to submit the transaction.
4. Review the validation message.
5. Correct the issue.
6. Submit the transaction again.

### Success Criteria

The user:

- Understands that the transaction was rejected
- Understands why it was rejected
- Identifies the incorrect or missing field
- Corrects the information successfully

### Usability Questions

- Was the validation message understandable?
- Was the affected field easy to identify?
- Did the message explain how to correct the problem?
- Did the user understand whether the transaction had been saved?

---

## UT-05: Create a New Product Record

### User Role

Inventory Employee

### Objective

Determine whether users can create new product records accurately.

### Scenario

A new product must be added to the organization's inventory system.

### Task

1. Navigate to product management.
2. Select the option to add a new product.
3. Enter the required product information.
4. Associate the appropriate supplier.
5. Define the reorder level.
6. Save the product.
7. Confirm that the product can be retrieved.

### Success Criteria

The product is successfully created without user assistance or significant navigation difficulty.

### Observe

- Whether required fields are obvious
- Whether field labels are understandable
- Whether the save action is clearly visible
- Whether confirmation is provided
- Whether users understand supplier and reorder-level fields

---

## UT-06: Record Inventory Replenishment

### User Role

Inventory Employee

### Objective

Evaluate whether replenishment information can be recorded efficiently.

### Scenario

A supplier shipment containing 30 units of an existing product has arrived.

### Task

1. Locate the replenishment function.
2. Select the supplier.
3. Select the product.
4. Enter a quantity of 30.
5. Record the replenishment.
6. Confirm that inventory has been updated.

### Success Criteria

The user records the replenishment correctly and verifies the updated quantity.

### Usability Questions

- Was the replenishment function easy to locate?
- Was it clear which supplier and product were selected?
- Was the updated quantity easy to verify?
- Were any steps unnecessary or confusing?

---

## UT-07: Review Management Dashboard

### User Role

Manager

### Objective

Determine whether management users can understand the primary operational KPIs without additional explanation.

### Scenario

You are reviewing current operational performance before a weekly management meeting.

### Task

Using the Power BI dashboard, identify:

- Current inventory level
- Number of low-stock products
- Sales performance
- Highest-performing product
- Recent replenishment activity

### Success Criteria

The Manager can locate and correctly interpret the requested information.

### Observe

- Whether KPIs are clearly labelled
- Whether charts are easy to interpret
- Whether filters are understandable
- Whether users can determine what reporting period is being displayed
- Whether important information is visually distinguishable

---

## UT-08: Filter Sales Performance Report

### User Role

Manager

### Objective

Evaluate whether management can interact with reporting filters effectively.

### Scenario

Management wants to review sales performance for a specific reporting period.

### Task

1. Open the sales-performance report.
2. Select the requested reporting period.
3. Filter the report by product or category.
4. Identify total sales for the filtered results.
5. Reset the filters.

### Success Criteria

The user applies and removes filters without assistance and understands how the report changes.

### Usability Questions

- Were filters easy to locate?
- Was it obvious which filters were active?
- Was resetting filters straightforward?
- Did the user understand how filters affected the displayed KPIs?

---

## UT-09: Search for a Product

### User Role

Inventory Employee

### Objective

Evaluate whether users can retrieve product information through the search function.

### Scenario

An employee needs to retrieve a product but only remembers part of its name.

### Task

1. Navigate to product search.
2. Enter a partial product name.
3. Review the search results.
4. Select the correct product.

### Success Criteria

The correct product can be located without excessive searching.

### Observe

- Search response time
- Relevance of results
- Clarity of displayed product information
- Ease of selecting the correct result

---

## UT-10: Attempt Restricted Functionality

### User Role

Sales Employee

### Objective

Determine whether access restrictions are communicated clearly to users.

### Scenario

A Sales Employee attempts to access functionality reserved for system administrators.

### Task

1. Navigate toward restricted functionality.
2. Attempt to access the administrative function.
3. Review the system response.

### Success Criteria

The system prevents unauthorized access and provides a clear message indicating that the user does not have permission.

### Usability Questions

- Was the access-denied message clear?
- Did the user understand why access was denied?
- Did the system provide a clear way to return to normal functionality?

---

# Post-Test Questions

After completing usability testing, participants may be asked:

1. Which task was easiest to complete?
2. Which task was most difficult?
3. Was any terminology confusing?
4. Was important information easy to locate?
5. Were error messages understandable?
6. Were system actions and buttons labelled clearly?
7. Did you ever feel unsure about what to do next?
8. Were any steps unnecessary?
9. What would you change to make the system easier to use?
10. How confident would you feel using the system without assistance?

## Example Test Results Template

| Test ID | User Role | Completed | Time | Errors | Assistance | Difficulty Rating | Comments |
|---|---|---:|---:|---:|---|---:|---|
| UT-01 | Inventory Employee | TBD | TBD | TBD | TBD | TBD | Testing pending |
| UT-02 | Inventory Employee | TBD | TBD | TBD | TBD | TBD | Testing pending |
| UT-03 | Sales Employee | TBD | TBD | TBD | TBD | TBD | Testing pending |
| UT-04 | Sales Employee | TBD | TBD | TBD | TBD | TBD | Testing pending |
| UT-05 | Inventory Employee | TBD | TBD | TBD | TBD | TBD | Testing pending |
| UT-06 | Inventory Employee | TBD | TBD | TBD | TBD | TBD | Testing pending |
| UT-07 | Manager | TBD | TBD | TBD | TBD | TBD | Testing pending |
| UT-08 | Manager | TBD | TBD | TBD | TBD | TBD | Testing pending |
| UT-09 | Inventory Employee | TBD | TBD | TBD | TBD | TBD | Testing pending |
| UT-10 | Sales Employee | TBD | TBD | TBD | TBD | TBD | Testing pending |

## Usability Issue Classification

Issues discovered during usability testing may be categorized as:

### Critical

The user cannot complete an essential business task.

### High

The user can complete the task only with significant difficulty or assistance.

### Medium

The user completes the task but experiences noticeable confusion or inefficiency.

### Low

Minor usability issue that does not significantly affect task completion.

## Usability Improvement Process

When a usability issue is identified:

1. Document the affected test scenario.
2. Describe the observed user behaviour.
3. Record the usability issue.
4. Assign a severity level.
5. Identify the affected system component.
6. Recommend an interface or workflow improvement.
7. Update related requirements if necessary.
8. Implement the approved improvement.
9. Retest the scenario.
10. Document the final result.

## Relationship to UAT

Usability testing complements User Acceptance Testing but serves a different purpose.

**UAT asks:**

Does the system satisfy the business requirements?

**Usability testing asks:**

Can the intended users complete those business activities effectively and efficiently?

Both forms of testing should be completed before final implementation approval.
