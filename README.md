# Inventory & Returns Management Database

A MySQL database project focused on managing customer orders, tracking merchandise returns, and analyzing business trends.

## Project Overview

This project was developed from my DAD 220 coursework at Southern New Hampshire University. It uses a fictional company, Quantigration, to demonstrate how relational databases and SQL queries can help businesses organize information and make data-driven decisions.

I created related database tables, worked with customer and order records, and analyzed return patterns using SQL.

## Technologies Used

- MySQL 8
- SQL
- DB Fiddle (database testing)
- GitHub (version control and documentation)

## Database Structure

The database contains three related tables:

- **Collaborators:** Stores customer information and locations.
- **Orders:** Stores customer orders and product information.
- **RMA:** Tracks returned merchandise.

The tables use primary and foreign keys to maintain relationships between records.

## Features

- Relational database design
- Customer and order management
- Merchandise return tracking
- SQL joins across multiple tables
- Return analysis by state and product
- Aggregate calculations and percentage analysis

## Project Files

| File | Description |
|---|---|
| `database_schema.sql` | Creates the database and tables |
| `sample_data.sql` | Inserts fictional sample records |
| `database_setup.sql` | Renames and updates database tables |
| `analysis_queries.sql` | Contains four SQL analysis queries |
| `project_findings.md` | Explains findings and recommendations |

## How to Run

Use MySQL 8 or a compatible MySQL environment.

Execute the SQL files in this order:

1. `database_schema.sql`
2. `sample_data.sql`
3. `database_setup.sql`
4. `analysis_queries.sql`

**Note:** When using DB Fiddle, omit the `CREATE DATABASE` and `USE QuantigrationUpdates` statements because DB Fiddle provides its own database.

## SQL Analysis

The project includes four analysis queries:

1. Identify states with the highest number of merchandise returns.
2. Calculate each product's percentage of total returns.
3. Count orders from Framingham, Massachusetts.
4. Count customer records from Woonsocket, Rhode Island.

## Key Findings

The original coursework dataset showed:

- Massachusetts had the highest number of returns, with 972.
- The Basic Switch 48-port accounted for 22.05% of all returns.
- The Basic Switch 24-port accounted for 0.09% of all returns.

These percentages represent shares of total returns, not product return rates based on units sold.

The smaller fictional sample dataset is provided for demonstration and produces different results.

## Testing

The database was tested using MySQL 8 in DB Fiddle.

The following tests completed successfully:

- Created all three database tables.
- Inserted fictional sample records.
- Renamed Customers to Collaborators.
- Executed the returns-by-state query.
- Executed the returns-by-product query.
- Verified the Framingham order count.
- Verified the Woonsocket customer count.

## Skills Demonstrated

- Database design
- Primary and foreign keys
- SQL joins
- Data filtering and aggregation
- Database schema modifications
- Data analysis and interpretation
- Technical documentation

## Future Improvements

- Add visual reports and charts.
- Develop a Python application connected to the database.
- Expand the fictional dataset for more detailed analysis.
- Add additional queries for return reasons and product trends.

## About This Project

I created this project to strengthen my SQL and database management skills while pursuing my Bachelor of Science in Computer Science at Southern New Hampshire University. It also demonstrates my ability to use technical skills to analyze information and explain findings in a way that supports business decisions.
