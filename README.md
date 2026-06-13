# Water Service Management — ERP System

**Note:** The `Company Profile.pdf` and business documents in this repo are template/sample documents. This is a 2015 ASP.NET portfolio project — configuration values shown in Web.config are placeholders and must be set before deployment.

A comprehensive ERP for water tank cleaning and service management businesses. Handles customers, sales, quotations, billing, stock management, employee tracking, and multi-center operations.

## Built: 2015

## Tech Stack

- **Backend:** ASP.NET 4.0 (C#)
- **Database:** SQL Server (connection pooling: 600-1800)
- **Frontend:** jQuery, jQuery UI, jqGrid (advanced data tables)
- **PDF Export:** iTextSharp
- **Validation:** jQuery Validation Engine

## Core Modules (38 ASPX pages)

### Customer & Sales
- **Customer Management** — Registration, profile, tank assignment tracking
- **Sales & Stock** — Inventory tracking, stock entry/issue, sales recording
- **Quotation System** — Quote generation, customer linking, print output
- **Advance Payments** — Payment collection and reconciliation

### Service Operations
- **Tank Management** — Tank inventory, capacity tracking, customer mapping
- **Multi-Center Operations** — Branch management, regional operations
- **Employee Management** — Staff records, assignment, reporting

### Financial
- **Invoice Generation** — Tax calculation, PDF export
- **Payment Tracking** — Advance vs actual billing reconciliation
- **Due Alerts** — Customer payment reminder system
- **Statement Printing** — Customer account statements

### Reporting (7 reports)
- Sales analytics with Excel/PDF export
- Customer due payment alerts
- Stock register (inventory status)
- Employee reports
- Franchise performance

## Architecture

```
├── *.aspx              — Application pages (38 total)
├── *.html              — Public website pages
├── bin/                — Compiled DLLs (App_Code, iTextSharp)
├── CSS/                — Stylesheets
├── js/                 — jQuery, jqGrid, validation
├── ui/                 — jQuery UI components
├── themes/             — Custom UI themes
├── images/ & img/      — Assets
├── include/            — PHP mailer (for contact form)
├── AdminPage.master    — Master page template
└── Web.config          — Configuration
```

## Setup

1. Create SQL Server database
2. Update `Web.config` connection string (`ConnStrErp`)
3. Deploy to IIS with ASP.NET 4.0
4. Access `Default.aspx` for login

## Note

Deployed for a real water tank cleaning services company. Manages the full business cycle from customer acquisition through quotation, service delivery, and billing across multiple service centers.
