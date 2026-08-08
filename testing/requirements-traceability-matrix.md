# Requirements Traceability Matrix

## Purpose

This Requirements Traceability Matrix (RTM) provides end-to-end traceability between business requirements, functional requirements, Agile user stories, acceptance criteria, and User Acceptance Testing (UAT) test cases for the proposed retail inventory management system.

The RTM helps ensure that:

- Business requirements are addressed by system functionality
- Functional requirements are represented in user stories
- User stories have defined acceptance criteria
- Requirements are validated through testing
- Missing or untested requirements can be identified
- Changes to requirements can be assessed for downstream impact

## Traceability Structure

The project follows the traceability path:

**Business Requirement → Functional Requirement → User Story → Acceptance Criteria → UAT Test Case**

This allows each major system capability to be traced from its original business need through validation.

## Requirements Traceability Matrix

| Business Requirement | Functional Requirement | User Story | Acceptance Criteria | UAT Test Case | Status |
|---|---|---|---|---|---|
| BR-01 Centralized Inventory Management | FR-01 Product Management | US-02 Add Product Record | Product can be created when valid required information is submitted | UAT-002 | Not Started |
| BR-01 Centralized Inventory Management | FR-01 Product Management | US-03 Update Product Information | Valid changes to existing product information are stored | Future Test Case | Not Started |
| BR-02 Inventory Visibility | FR-02 Inventory Tracking | US-01 View Product Inventory | Current inventory quantity and product information are displayed | UAT-001 | Not Started |
| BR-01 Centralized Inventory Management | FR-03 Sales Transaction Recording | US-05 Record Sales Transaction | Valid sales transactions are successfully stored | UAT-004 | Not Started |
| BR-01 Centralized Inventory Management | FR-04 Automatic Inventory Updates | US-06 Automatically Reduce Inventory | Inventory quantity decreases by the quantity sold | UAT-005 | Not Started |
| BR-04 Low-Stock Identification | FR-05 Low-Stock Identification | US-08 Identify Low-Stock Products | Products below their reorder levels are identified as low stock | UAT-006 | Not Started |
| BR-04 Low-Stock Identification | FR-05 Low-Stock Identification | US-09 Review Low-Stock Report | Low-stock report displays qualifying products and excludes adequately stocked products | UAT-006, UAT-007 | Not Started |
| BR-06 Supplier Management | FR-06 Supplier Management | US-10 Maintain Supplier Information | Valid supplier information can be created or updated | Future Test Case | Not Started |
| BR-06 Supplier Management | FR-07 Inventory Replenishment Recording | US-11 Record Inventory Replenishment | Valid replenishment transactions are successfully stored | UAT-008 | Not Started |
| BR-01 Centralized Inventory Management | FR-07 Inventory Replenishment Recording | US-12 Automatically Increase Inventory | Inventory quantity increases by the quantity received | UAT-009 | Not Started |
| BR-02 Inventory Visibility | FR-08 Product Search | US-04 Search for Products | Products can be retrieved using ID, name, or category | UAT-010 | Not Started |
| BR-03 Standardized Reporting | FR-09 Sales Reporting | US-13 View Sales Performance | Sales performance can be analyzed by product and reporting period | UAT-011 | Not Started |
| BR-03 Standardized Reporting | FR-10 Inventory Reporting | US-14 View Inventory KPIs | Required inventory KPIs are displayed accurately | UAT-012 | Not Started |
| BR-09 Operational Visibility | FR-11 Product Performance Reporting | US-15 View Product Performance | Product performance can be compared using sales and inventory data | Future Test Case | Not Started |
| BR-05 Historical Transaction Data | FR-12 Historical Transaction Storage | US-07 Maintain Sales History | Historical sales transactions remain available | UAT-014 | Not Started |
| BR-05 Historical Transaction Data | FR-12 Historical Transaction Storage | US-18 Analyze Historical Transactions | Historical transaction information can be retrieved for analysis | UAT-014 | Not Started |
| BR-07 Improved Data Accuracy | FR-13 Data Validation | US-16 Validate Required Data | Missing or invalid required information is rejected | UAT-003 | Not Started |
| BR-03 Standardized Reporting | FR-14 Dashboard Reporting | US-14 View Inventory KPIs | Power BI dashboard displays required KPI information | UAT-012 | Not Started |
| BR-09 Operational Visibility | FR-14 Dashboard Reporting | US-13 View Sales Performance | Reporting reflects relevant sales information | UAT-011 | Not Started |
| BR-09 Operational Visibility | FR-14 Dashboard Reporting | US-18 Analyze Historical Transactions | Historical reporting data is available for analysis | UAT-014 | Not Started |
| BR-03 Standardized Reporting | FR-14 Dashboard Reporting | Reporting Validation | Power BI output matches validated SQL source data | UAT-015 | Not Started |
| BR-07 Improved Data Accuracy | FR-15 User Access | US-17 Restrict Administrative Access | Unauthorized users cannot access restricted functionality | UAT-013 | Not Started |

## Non-Functional Requirements Traceability

Non-functional requirements are validated through system design, security controls, testing, and operational procedures.

| Non-Functional Requirement | Related Project Artifact | Validation Method | Status |
|---|---|---|---|
| NFR-01 Performance | System design and testing | Response-time testing | Planned |
| NFR-02 Data Validation | Functional requirements, US-16 | UAT-003 | Not Started |
| NFR-03 Data Integrity | Database design | Referential-integrity testing | Planned |
| NFR-04 Security | Security Risk Assessment | Authorization testing / UAT-013 | Not Started |
| NFR-05 Authentication | Security Risk Assessment | Authentication testing | Planned |
| NFR-06 Reliability | Security and Contingency Plan | Transaction persistence and recovery testing | Planned |
| NFR-07 Usability | Usability Testing Scenarios | UT-01 through UT-10 | Not Started |
| NFR-08 Scalability | Database design | Design review | Planned |
| NFR-09 Maintainability | SDLC Implementation Approach | Documentation and design review | Planned |
| NFR-10 Reporting Compatibility | Power BI reporting design | UAT-015 | Not Started |
| NFR-11 Data Consistency | Database design | SQL validation and reconciliation | Planned |
| NFR-12 Auditability | Security Risk Assessment | Transaction-log review | Planned |
| NFR-13 Availability | Security and Contingency Plan | Outage/recovery procedure review | Planned |
| NFR-14 Recoverability | Security and Contingency Plan | Backup and restore testing | Planned |
| NFR-15 Documentation | Project repository | Documentation review | In Progress |

## Example End-to-End Traceability

The low-stock requirement demonstrates how traceability is maintained across the project.

### Business Requirement

**BR-04:** Users require a method for identifying products that have fallen below defined reorder levels.

↓

### Functional Requirement

**FR-05:** The system shall identify products whose current inventory quantity falls below their configured reorder level.

↓

### User Story

**US-08:** As an Inventory Employee, I want products below their reorder level to be automatically identified so that I can take replenishment action before stockouts occur.

↓

### Acceptance Criteria

Given that a product's current inventory quantity is below its configured reorder level, when the inventory level is evaluated, then the product shall be identified as low stock.

↓

### UAT Test Case

**UAT-006:** Verify that a product with a current quantity of 5 and a reorder level of 10 is identified as low stock.

↓

### Expected Result

The product is identified as low stock because:

5 < 10

## Change Impact Analysis

The RTM can also be used when requirements change.

For example, if FR-05 changes from:

"Identify products below their reorder level"

to:

"Identify products at or below their reorder level"

the analyst can use the RTM to identify affected items including:

- BR-04
- US-08
- US-09
- Acceptance criteria
- UAT-006
- UAT-007
- Low-stock SQL logic
- Power BI reporting logic

This ensures that requirement changes are reflected throughout related system components and testing artifacts.

## Traceability Status Definitions

### Not Started

The related system functionality or test has not yet been completed.

### In Progress

Implementation, documentation, or validation is currently underway.

### Pass

The requirement has been successfully implemented and validated.

### Fail

Testing identified that the requirement is not currently satisfied.

### Blocked

Validation cannot proceed because of a dependency, defect, or unavailable system component.

### Planned

Validation will occur during a later project phase.

## RTM Maintenance

The Requirements Traceability Matrix should be updated when:

- Requirements are added or changed
- User stories are created or modified
- Acceptance criteria change
- Test cases are created
- Testing is completed
- Defects affect requirement implementation
- System components change
- Reporting logic changes

## Conclusion

The Requirements Traceability Matrix provides a structured connection between business needs, system requirements, Agile delivery artifacts, and testing.

Maintaining traceability helps ensure that the proposed retail inventory management system can be validated against its original business objectives throughout the system development lifecycle.
