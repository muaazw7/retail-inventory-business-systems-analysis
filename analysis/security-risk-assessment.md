# Security Risk Assessment

## Purpose

This document identifies and evaluates key security risks associated with the proposed retail inventory management system.

The purpose of the assessment is to identify potential threats to business data, system availability, user access, and operational continuity and to recommend appropriate controls and mitigation strategies.

This assessment is designed from a business systems analysis perspective and does not represent a full technical penetration test or cybersecurity audit.

## System Scope

The proposed system stores and processes information related to:

- Products
- Inventory quantities
- Suppliers
- Sales transactions
- Replenishment transactions
- User accounts
- Operational reporting
- Historical transaction data

The system also provides structured data for Power BI reporting.

## Risk Assessment Method

Each identified risk is evaluated using:

**Likelihood**
- Low
- Medium
- High

**Impact**
- Low
- Medium
- High

**Risk Level**
- Low
- Medium
- High
- Critical

Risk levels are based on the estimated combination of likelihood and business impact.

## Security Risks

| Risk ID | Security Risk | Likelihood | Impact | Risk Level | Recommended Control |
|---|---|---|---|---|---|
| SR-01 | Unauthorized system access | Medium | High | High | Authentication, role-based access control, strong password requirements |
| SR-02 | Excessive user privileges | Medium | High | High | Apply least-privilege access and role-based permissions |
| SR-03 | Data loss | Low | High | High | Automated backups, recovery procedures, backup testing |
| SR-04 | Incorrect or malicious data modification | Medium | High | High | Access controls, validation rules, transaction logging |
| SR-05 | Weak passwords or compromised credentials | Medium | High | High | Strong password policies and multi-factor authentication where available |
| SR-06 | SQL injection | Medium | High | High | Parameterized queries, input validation, restricted database permissions |
| SR-07 | Exposure of sensitive business data | Low | High | Medium | Access restrictions, encryption, secure data handling |
| SR-08 | Inaccurate reporting caused by corrupted data | Medium | Medium | Medium | Data validation, reconciliation, reporting QA procedures |
| SR-09 | System outage | Medium | High | High | Backup procedures, recovery planning, system monitoring |
| SR-10 | Unauthorized API access | Medium | High | High | Authentication, authorization, secure API tokens, HTTPS |
| SR-11 | Unsecured data transmission | Low | High | Medium | Encrypt data in transit using HTTPS/TLS |
| SR-12 | Inadequate auditability | Medium | Medium | Medium | Maintain transaction logs and audit records |
| SR-13 | Insider misuse | Low | High | Medium | Least-privilege access, logging, access reviews |
| SR-14 | Outdated user access | Medium | Medium | Medium | Periodic access reviews and immediate removal of inactive accounts |
| SR-15 | Accidental deletion or modification | Medium | Medium | Medium | Confirmation controls, backups, restricted permissions |

## Detailed Risk Analysis

### SR-01: Unauthorized System Access

**Risk**

An unauthorized individual may gain access to the inventory management system and view or modify business information.

**Potential Impact**

Unauthorized access could result in:

- Incorrect inventory information
- Exposure of business data
- Unauthorized transaction changes
- Reporting inaccuracies
- Operational disruption

**Recommended Controls**

- Require authenticated user accounts
- Implement role-based access control
- Apply strong password requirements
- Use multi-factor authentication where available
- Disable inactive accounts
- Review user access periodically

---

### SR-02: Excessive User Privileges

**Risk**

Users may receive more system access than is necessary for their job responsibilities.

**Potential Impact**

Excessive permissions increase the risk of accidental or unauthorized changes to products, suppliers, transactions, or inventory records.

**Recommended Controls**

Apply the principle of least privilege.

Example roles may include:

| Role | Example Permissions |
|---|---|
| Sales Employee | Record sales and view product availability |
| Inventory Employee | Maintain inventory and replenishment information |
| Warehouse Employee | View and confirm inventory receipts |
| Manager | View operational reports and dashboards |
| System Administrator | Manage users, configuration, and system administration |

Users should only receive permissions required to perform their assigned responsibilities.

---

### SR-03: Data Loss

**Risk**

System information may be lost because of technical failure, accidental deletion, corruption, or other incidents.

**Potential Impact**

Loss of product, inventory, sales, or supplier data could significantly disrupt business operations and reporting.

**Recommended Controls**

- Perform automated database backups
- Maintain backup copies in a secure location
- Define database recovery procedures
- Periodically test backup restoration
- Document recovery responsibilities

---

### SR-04: Unauthorized or Incorrect Data Modification

**Risk**

Inventory or transaction information may be intentionally or accidentally modified incorrectly.

**Potential Impact**

Incorrect data may result in:

- Incorrect inventory quantities
- Poor replenishment decisions
- Incorrect management reporting
- Financial reporting issues
- Reduced confidence in the system

**Recommended Controls**

- Role-based permissions
- Data validation rules
- Transaction logging
- Audit trails
- Approval workflows for sensitive changes where appropriate

---

### SR-05: Compromised User Credentials

**Risk**

Weak or compromised passwords may allow unauthorized users to access the system.

**Recommended Controls**

- Require strong passwords
- Prevent password sharing
- Use multi-factor authentication where supported
- Lock accounts following repeated failed authentication attempts
- Remove access promptly when users leave the organization

---

### SR-06: SQL Injection

**Risk**

Improperly handled user input could allow malicious SQL statements to be submitted to the database.

**Potential Impact**

A successful SQL injection attack could allow unauthorized access, modification, or deletion of database information.

**Recommended Controls**

- Use parameterized SQL queries
- Validate user input
- Avoid dynamically constructing SQL statements from raw user input
- Restrict database permissions
- Separate application and administrative database access

---

### SR-07: Exposure of Business Data

**Risk**

Business data may be viewed by individuals who are not authorized to access it.

**Recommended Controls**

- Restrict data access by user role
- Encrypt sensitive data where appropriate
- Secure exported reports and files
- Avoid unnecessary storage of confidential information
- Review reporting permissions

---

### SR-08: Reporting Data Integrity

**Risk**
Incorrect, duplicated, incomplete, or corrupted source data may result in inaccurate Power BI reporting.

**Potential Impact**
Management decisions may be based on inaccurate KPIs or operational information.

**Recommended Controls**

- Validate source data
- Reconcile reporting outputs with database records
- Document KPI calculations
- Test Power BI measures
- Establish reporting QA procedures
- Monitor refresh failures

---

### SR-09: System Availability
**Risk**

A technical outage may prevent employees from accessing inventory and transaction information.

**Recommended Controls**

- Maintain database backups
- Establish recovery procedures
- Monitor system availability
- Document outage response procedures
- Define alternative temporary processes for critical operations

---

### SR-10: API and Integration Security
**Risk**

Future system integrations may expose data or system functionality through APIs.

**Recommended Controls**

- Require API authentication
- Use role-based authorization
- Encrypt API communication using HTTPS
- Protect API keys and tokens
- Validate API requests
- Log integration activity
- Limit access to required endpoints

## Data Protection Principles
The proposed system should follow the following principles:

### Least Privilege
Users receive only the access required to perform their job responsibilities.

### Authentication
Restricted functionality requires authenticated user access.

### Authorization
System permissions are determined by assigned user roles.

### Data Validation
Inputs are validated before information is committed to the database.

### Auditability
Important system and transaction activity should be traceable through system records or logs.

### Backup and Recovery
Operational data should be protected through scheduled backups and documented recovery procedures.

### Secure Integration
Future APIs and integrations should use authenticated and encrypted communication.

## Security Requirements Mapping
The security assessment supports several existing non-functional requirements.

| Requirement | Security Relationship |
|---|---|
| NFR-02 | Data validation reduces invalid or malicious inputs |
| NFR-03 | Referential integrity protects data consistency |
| NFR-04 | Restricts administrative functionality to authorized users |
| NFR-05 | Requires user authentication |
| NFR-06 | Supports reliable storage of committed transactions |
| NFR-11 | Supports consistency across related system records |
| NFR-12 | Supports transaction auditability |
| NFR-14 | Supports backup and recovery procedures |

## Security Responsibilities
Security controls should be reviewed throughout the SDLC rather than only after development is complete.

Security-related activities should include:

**Requirements Phase**
- Identify access-control requirements
- Identify sensitive information
- Define authentication requirements

**Design Phase**
- Design role-based permissions
- Define validation controls
- Identify secure integration requirements

**Development Phase**
- Apply secure database access practices
- Implement input validation
- Apply appropriate access restrictions

**Testing Phase**
- Test authorization rules
- Test invalid inputs
- Validate user permissions
- Verify backup and recovery processes

**Deployment Phase**
- Configure production permissions
- Remove unnecessary accounts
- Secure database credentials
- establish backup schedules

**Post-Implementation**
- Review user access
- Monitor system issues
- Review audit information
- Apply security updates and system improvements

## Residual Risk
Security controls can reduce risk but cannot eliminate all security threats.

Residual risks should be reviewed periodically as:

- Business processes change
- New users are added
- New integrations are introduced
- System functionality expands
- Security threats evolve

## Conclusion
The proposed inventory management system introduces security considerations related to user access, data integrity, system availability, database security, reporting accuracy, and future system integrations.

Implementing authentication, role-based access control, input validation, secure database practices, backups, auditability, and secure integration controls can significantly reduce these risks while supporting reliable business operations.
