# Retail Sales Analysis

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

