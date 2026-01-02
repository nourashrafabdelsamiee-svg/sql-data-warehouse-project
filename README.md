# sql-data-warehouse-project
Building a modern data warehouse with SQL Server includind ETL processes , data modeling 

This repository showcases a complete data warehousing and analytics solution using SQL Server, demonstrating ETL pipelines, data modeling, and analytics.

---

## 🏗️ Data Architecture

The project follows the **Medallion Architecture** with **Bronze**, **Silver**, and **Gold** layers:

1. **Bronze Layer**: Raw data ingestion from CSV files into SQL Server.  
2. **Silver Layer**: Cleansing, standardization, and normalization for analysis.  
3. **Gold Layer**: Business-ready star schema for reporting and analytics.

![Data Architecture](docs/data_architecture.png)

---

## 📖 Project Overview

**Key Components:**
- **Data Architecture**: Design a modern data warehouse with Bronze, Silver, and Gold layers.  
- **ETL Pipelines**: Extract, transform, and load data from ERP & CRM sources.  
- **Data Modeling**: Fact and dimension tables optimized for analytical queries.  
- **Analytics & Reporting**: SQL-based reports and dashboards for actionable insights.

**Skills demonstrated:**
- SQL Development  
- Data Engineering & Data Modeling  
- ETL Pipelines  
- Data Analytics & Reporting  

---

## 🚀 Project Requirements

**Data Warehouse (Engineering):**
- Import data from ERP and CRM CSV files  
- Cleanse and integrate data for analytics  
- Create a single data model for reporting  
- Document the data model for stakeholders  

---

## 📂 Repository Structure
data-warehouse-project/
│
├── datasets/ # Raw CSV files from ERP & CRM
├── docs/ # Documentation & DrawIO diagrams
├── scripts/ # ETL and SQL scripts
│ ├── bronze/ # Raw data loading
│ ├── silver/ # Data cleaning & transformation
│ ├── gold/ # Analytics models
├── tests/ # Data quality & validation scripts
├── README.md # Project overview
├── LICENSE # MIT License
├── .gitignore # Git ignore file
└── requirements.txt # Project dependencies




