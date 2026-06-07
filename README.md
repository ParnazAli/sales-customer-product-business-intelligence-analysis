# adventureworks-sql-analysis

## Overview
This project delivers a structured SQL-based analysis of the AdventureWorks dataset, a fictional bicycle manufacturer and retailer. It explores sales trends, customer behavior, and product performance using advanced SQL techniques — designed to extract actionable business insights from raw transactional data.

> Built to demonstrate real-world data analysis skills using SQL Server.

---

## Dataset
- **Source:** Microsoft AdventureWorks (fictional company: Adventure Works Cycles)
- **Domain:** Bicycle manufacturing and retail
- **Scope:** Products, customers, and sales transactions across multiple years

---

## Key Business Questions Answered

| # | Question | Script |
|---|----------|--------|
| 1 | For each product, is this year's sales above or below its historical average, and did it grow or decline compared to last year? | `09_performance_analysis.sql` |
| 2 | How do cumulative sales and average price evolve year over year? | `08_cumulative_analysis.sql` |
| 3 | How many of our customers are VIP, Regular, or New based on spending and loyalty? | `10_data_segmentation.sql` |
| 4 | What does the complete behavioral and demographic profile of each customer look like? | `12_report_customers.sql` |
| 5 | Which countries show unusually high sales volume compared to their customer base size, indicating stronger purchasing intensity per market? | `06_ranking_analysis.sql` |
| 6 | Which product categories generate revenue disproportionately high relative to their representation in the product catalog? | `11_part_to_whole_analysis.sql` |

---

## Project Structure

| Script | Description |
|--------|-------------|
| `01_date_range_exploration.sql` | Understand the time boundaries of the data |
| `02_dimensions_exploration.sql` | Explore categorical dimensions |
| `03_date_range_exploration.sql` | Additional date range checks |
| `04_measures_exploration.sql` | Explore key numeric measures |
| `05_magnitude_analysis.sql` | Analyze scale and volume of data |
| `06_ranking_analysis.sql` | Rank products and customers by revenue |
| `07_change_over_time_analysis.sql` | Monthly and yearly sales trends |
| `08_cumulative_analysis.sql` | Running totals and moving averages |
| `09_performance_analysis.sql` | Year-over-year product performance |
| `10_data_segmentation.sql` | Customer and product segmentation |
| `11_part_to_whole_analysis.sql` | Category revenue contribution analysis |
| `12_report_customers.sql` | Full customer report view |
| `13_report_products.sql` | Full product report view |

---

## Key SQL Techniques Used
- Window functions: `RANK()`, `LAG()`, `SUM() OVER()`, `AVG() OVER(PARTITION BY)`
- CTEs for modular and readable query design
- Date functions: `DATETRUNC()`, `DATEDIFF()`, `FORMAT()`
- Business logic via `CASE WHEN` for segmentation and classification
- Reusable reporting views (`CREATE VIEW`)

---

## How to Run
1. Restore the AdventureWorks database on SQL Server
2. Run scripts in order from `01` to `13`
3. Query the views in `12_report_customers.sql` and `13_report_products.sql` for consolidated reporting layers

---

## Author
Parnaz Ali
[LinkedIn](https://www.linkedin.com/in/parnaz-ali-90767a248) · [GitHub](https://github.com/ParnazAli)
