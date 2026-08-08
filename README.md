# Retail Inventory Business Systems Analysis

## Project Overview
This project demonstrates an end-to-end business systems analysis for a fictional mid-sized retail organization seeking to replace spreadsheet-based inventory processes with a centralized inventory management and reporting solution.

The project covers business requirements, functional and non-functional requirements, process modelling, Agile user stories, acceptance criteria, SQL database design, user acceptance testing, and Power BI reporting.

## Business Problem
The organization currently manages inventory using spreadsheets and disconnected manual processes. Employees manually update inventory levels, verify product availability, track supplier information, and prepare recurring reports.

These processes create several challenges:

- Limited visibility into current inventory levels
- Risk of inventory inaccuracies
- Manual and time-consuming reporting
- Difficulty identifying low-stock products
- Inconsistent transaction tracking
- Limited historical data for business analysis

## AS-IS Process Model
The following process model illustrates the organization's current spreadsheet-based inventory management workflow and highlights the manual activities and process inefficiencies addressed by the proposed system.

**Process Modelling Tool:** Microsoft Visio
![AS-IS Retail Inventory Management Process](process-models/as-is-process.png)

Detailed AS-IS process documentation is available in [`process-models/as-is-process.md`](process-models/as-is-process.md).

## Proposed Solution
The proposed solution is a centralized retail inventory management system that supports:

- Product and inventory management
- Supplier management
- Sales transaction tracking
- Automated inventory updates
- Low-stock monitoring
- Historical transaction storage
- SQL-based reporting
- Power BI dashboards and KPI reporting

## Business Systems Analysis Deliverables

- Business requirements
- Functional requirements
- Non-functional requirements
- Requirements mapping and traceability
- AS-IS process model
- TO-BE process model
- BPMN process diagrams
- UML use-case diagram
- Cost-benefit and ROI analysis
- Agile user stories
- Acceptance criteria
- SDLC implementation approach
- Security risk assessment
- Security and contingency considerations
- SQL database design
- Entity relationship diagram
- SQL queries
- UAT test cases
- Usability testing scenarios
- Requirements traceability matrix
- API documentation
- Power BI dashboard

## Tools & Technologies
- Microsoft SQL Server
- SQL Server Management Studio
- Power BI
- Microsoft Excel
- Microsoft Visio
- Jira
- GitHub
- REST API concepts
- JSON

## Project Structure
```text
retail-inventory-business-systems-analysis/
│
├── README.md
│
├── requirements/
│   ├── business-requirements.md
│   ├── functional-requirements.md
│   ├── non-functional-requirements.md
│   └── requirements-mapping.md
│
└── process-models/
    ├── as-is-process.md
    ├── as-is-process.png
    └── to-be-process.md
