# Inventory & Returns Management Database
## SQL Data Analysis — Project Findings

### Project Overview

This project focuses on analyzing customer orders and merchandise returns for a fictional company called Quantigration. I created a relational database using MySQL and used SQL queries to organize the data, identify return patterns, and provide information that could help the company make better business decisions.

### Returns by State

I used SQL joins to connect the Collaborators, Orders, and RMA tables and calculate the number of returns for each state.

**Key findings:**
- Massachusetts had the highest number of returns, with 972.
- Arkansas, Oregon, West Virginia, and Alabama were also among the states with the highest number of returns.
- The results showed that return activity varied across different states.

These findings could help the company identify which locations may need further investigation. However, a higher number of returns does not necessarily mean there is a problem in that state because the total number of orders may also be higher.

### Returns by Product

I analyzed product returns using the SKU and product description to determine which products accounted for the largest percentage of total returns.

**Key findings:**
- The Basic Switch 48-port (SKU BAS-48-1C) accounted for 22.05% of all returns.
- The Basic Switch 24-port (SKU BAS-24-1C) accounted for only 0.09% of all returns.
- Certain products represented a much larger share of returns than others.

These results suggest that the company could benefit from investigating products with higher return volumes to identify possible quality or customer satisfaction issues.

### Limitations of the Data

Although the analysis identified patterns, there were some limitations.

The data did not provide enough information to determine the exact reasons for the returns. It also did not show the total number of units sold for each product, which would be necessary to calculate actual product return rates.

Because of these limitations, additional sales data, customer feedback, and product quality reports would be useful before making major business decisions.

### Recommendations

Based on the analysis, I would recommend that Quantigration:

1. Review products that account for the highest number of returns.
2. Investigate return patterns in states with higher return volumes.
3. Collect additional information about customer return reasons.
4. Compare return counts against total sales to calculate more meaningful return rates.
5. Continue monitoring return trends to identify possible improvements.

### Skills Demonstrated

Through this project, I practiced:

- Relational database design
- MySQL database management
- Primary and foreign keys
- SQL joins
- Aggregate functions (`COUNT`, `ROUND`)
- Filtering, grouping, and sorting data
- Analyzing business information
- Communicating technical findings to nontechnical stakeholders

### Conclusion

This project helped me understand how SQL can be used for more than just storing and retrieving information. By analyzing the data, I was able to identify patterns and explain how those findings could support business decisions. It also gave me more experience working with relational databases and using SQL to solve practical problems.
