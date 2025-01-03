# Retail Sales Analysis

## Table of Contents

1. [Executive Summary](#executive-summary)
2. [Key Findings](#key-findings)
3. [Project Description](#project-description)
4. [About the Data](#about-the-data)
5. [SQL Server Docker Container Setup](#sql-server-docker-container-setup)
6. [SQL Query Files](#sql-query-files)


## Executive Summary


## Key Findings


## Project Description


## About the Data

This retail sales analysis is conducted using SQL Server dialect (T-SQL). The data for this project were artifically generated using ChatGPT.


## SQL Server Docker Container Setup

This project utilizes a Docker container running SQL Server. The database is accessed and managed using **Azure Data Studio**.

### Setup Instructions

1. **Docker Container**:
   - A Docker container is set up with SQL Server running inside it. This container serves as the database instance for the project.

2. **Accessing the Database**:
   - To interact with the SQL Server instance, you can use **Azure Data Studio**. The database is configured to allow connections for managing and querying data.

### Prerequisites
- Docker must be installed and running on your machine.
- Azure Data Studio should be installed to connect to the SQL Server instance.
- The SQL Server container is running and accessible.

### How to Connect

1. Ensure the SQL Server Docker container is running.
2. Open **Azure Data Studio**.
3. Set the following connection details in your environment or configuration:
   - **Server**: `localhost,<port_number>`
   - **Authentication**: SQL Server Authentication
   - **User**: `DB_USER` (set as an environment variable)
   - **Password**: `DB_PASSWORD` (set as an environment variable)


## SQL Query Files

### Overview
This project contains several SQL query files, each serving a specific function in the database setup and data analysis process. Below is a summary of what each file does. All queries for this analysis can be found in the [code directory](/sql-projects/retail-sales-analysis/code/). 

### Files:
1. `create_table.sql`  
   - **Purpose**: Create the RETAIL_SALES_ANALYSIS table and upload the data into it.
   - **Key Operations**: 
     - Create tables order data.
     - Insert data into tables.

2. `exploratory_analysis.sql`
   - **Purpose**: Initial exploratory analysis to understand the underlying data.
   - **Key Operations**: 
     - Understand summary statistics of the data.
     - Analyze basic customer, category, and region metrics.

---

Each of these files is intended to work together to provide a comprehensive analysis and management of the retail sales data.
