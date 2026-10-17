# Inventory & Returns Management Database

A MySQL database project focused on managing customer orders, tracking merchandise returns, and analyzing product return trends using SQL.

## Project Overview

This project was developed as part of my DAD 220 coursework at Southern New Hampshire University. It focuses on a fictional company called Quantigration and demonstrates how relational databases can be used to organize customer information, manage orders, and analyze merchandise returns.

Throughout this project, I worked with multiple related tables, modified database structures, and wrote SQL queries to identify patterns in customer orders and returned products.

The goal was not only to retrieve information from a database but also to understand how that information could help a business make better decisions.

## Technologies Used

- **MySQL 8** — Database management and SQL queries
- **SQL** — Data retrieval, filtering, joins, and aggregation
- **DB Fiddle** — Testing and validating SQL queries
- **GitHub** — Project documentation and version control

## Database Structure

The database consists of three related tables:

| Table | Description |
|---|---|
| Collaborators | Stores customer information, including names, addresses, and locations |
| Orders | Stores customer orders, product SKUs, and descriptions |
| RMA | Tracks returned merchandise, return status, and reasons |

The database uses primary and foreign keys to establish relationships between records and maintain referential integrity.

The original Customers table is renamed to Collaborators during the database setup process.

## Project Features

- Created a relational database using MySQL
- Designed tables with primary and foreign keys
- Inserted and managed sample records
- Modified table and column names
- Connected related tables using SQL JOIN statements
- Analyzed merchandise returns by state
- Calculated product return counts and percentages
- Filtered records by customer location
- Interpreted query results to identify business trends

## Project Files

| File | Description |
|---|---|
| `database_schema.sql` | Creates the database and its three related tables |
| `sample_data.sql` | Inserts fictional customer, order, and return records |
| `database_setup.sql` | Renames tables and updates column names |
| `analysis_queries.sql` | Contains four SQL queries used for business analysis |
| `project_findings.md` | Documents findings and recommendations from the original coursework dataset |
| `README.md` | Provides project information, setup instructions, and testing results |

## How to Run

This project uses MySQL 8 and can be tested locally or through [DB Fiddle](https://www.db-fiddle.com/).

### Option 1: MySQL 8

Execute the SQL files in the following order:

1. `database_schema.sql` — Creates the database and tables.
2. `sample_data.sql` — Inserts fictional sample records.
3. `database_setup.sql` — Renames the Customers table to Collaborators and updates related columns.
4. `analysis_queries.sql` — Runs the four analysis queries.

Run these scripts against a fresh database because the sample records and schema modifications are not designed to be executed repeatedly without resetting the database.

### Option 2: DB Fiddle (MySQL 8)

1. Open [DB Fiddle](https://www.db-fiddle.com/) and select **MySQL 8**.
2. In the **Schema SQL** section, paste the `CREATE TABLE` statements from `database_schema.sql`.
3. Below those statements, paste the `INSERT INTO` statements from `sample_data.sql`.
4. At the bottom of Schema SQL, paste the `RENAME TABLE` and `ALTER TABLE` statements from `database_setup.sql`.
5. In the **Query SQL** section, paste the `SELECT` queries from `analysis_queries.sql`.
6. Click **Run** to execute the SQL and view the results.

**Important:** When using DB Fiddle, skip the `CREATE DATABASE` and `USE QuantigrationUpdates` statements because DB Fiddle provides its own database.

### Expected Results Using Sample Data

| Analysis | Expected Result |
|---|---|
| Returns by state | 1 return each from Massachusetts, Arkansas, Oregon, and Rhode Island |
| Basic Switch 48-port | 3 returns (75% of total returns) |
| Basic Switch 24-port | 1 return (25% of total returns) |
| Orders from Framingham, Massachusetts | 1 |
| Customer records from Woonsocket, Rhode Island | 1 |

These results come from the smaller fictional sample dataset created for this GitHub repository.

## SQL Analysis

The project includes four main analysis queries.

### 1. Returns by State

Uses INNER JOIN statements to connect customer, order, and return information.

The query groups results by state and counts the number of merchandise returns associated with each location.

**Purpose:** Identify geographic areas with higher numbers of returns.

### 2. Returns by Product

Connects order information with merchandise return records to calculate the number of returns for each product.

It also calculates the percentage of total returns associated with each product.

**Purpose:** Identify which products account for the largest share of merchandise returns.

These percentages represent each product's share of total returns, not the percentage of sold units that were returned.

### 3. Orders from Framingham, Massachusetts

Uses a JOIN and WHERE conditions to count orders associated with customers located in Framingham, Massachusetts.

**Purpose:** Demonstrate how SQL can retrieve and summarize order information for a specific location.

### 4. Customer Records from Woonsocket, Rhode Island

Uses WHERE conditions to filter customer records by city and state.

**Purpose:** Demonstrate location-based filtering and record counting.

## Key Findings from the Original Coursework

The original DAD 220 dataset was larger than the fictional sample dataset included in this repository.

The analysis identified several patterns:

- **Massachusetts:** Recorded 972 merchandise returns, the highest number among the states analyzed.
- **Basic Switch 48-port (BAS-48-1C):** Accounted for 22.05% of total returns.
- **Basic Switch 24-port (BAS-24-1C):** Accounted for 0.09% of total returns.

The Basic Switch 48-port represented a much larger share of returned merchandise than the Basic Switch 24-port.

These findings suggest that the company could benefit from further investigation into product quality, return reasons, and customer experiences.

However, return counts alone do not establish whether a product has a high defect rate. Additional sales-volume data would be needed to calculate and compare actual product return rates.

Additional findings and recommendations are available in `project_findings.md`.

## Testing and Validation

The database and SQL queries were tested using MySQL 8 in DB Fiddle.

The following operations were completed successfully:

- Created the Customers, Orders, and RMA tables.
- Inserted fictional customer, order, and return records.
- Renamed Customers to Collaborators.
- Updated the related customer identifier columns.
- Verified the database tables and their contents.
- Executed the returns-by-state analysis.
- Executed the returns-by-product analysis.
- Verified the Framingham order count.
- Verified the Woonsocket customer count.

All four analysis queries produced the expected results using the fictional sample data.

## Skills Demonstrated

This project helped me develop and practice several technical skills:

- Relational database design
- SQL database creation and modification
- Primary and foreign key relationships
- INNER JOIN statements
- SELECT and WHERE statements
- GROUP BY and ORDER BY
- COUNT and aggregate calculations
- Subqueries and percentage calculations
- SQL testing and troubleshooting
- Data analysis and interpretation
- Technical documentation

## Future Improvements

As I continue developing my database and programming skills, I would like to expand this project by:

- Creating visual reports to display return trends.
- Connecting the database to a Python application.
- Adding more fictional records for detailed analysis.
- Writing additional queries to examine return reasons and product categories.
- Building a simple interface for viewing customer orders and returns.

## About This Project

I developed this project while pursuing my Bachelor of Science in Computer Science at Southern New Hampshire University.

I am especially interested in cybersecurity and database management, and I wanted to include this project in my GitHub portfolio to demonstrate my SQL skills and ability to work with relational databases.

Working on this project helped me better understand how databases organize information, how SQL can be used to identify meaningful patterns, and why accurate data management is important for businesses.
