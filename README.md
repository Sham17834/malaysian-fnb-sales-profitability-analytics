# Malaysian F&B Sales & Profitability Analytics

## Project Overview

An end-to-end Data Analyst portfolio project examining sales performance and gross profitability for a fictional Malaysian Food & Beverage (F&B) chain.

The project uses approximately 120,000 synthetic sales transactions across 15 outlets, 30 products, and 8,000 customers during 2024–2025.

Python was used for data cleaning and ETL, PostgreSQL for relational data storage and SQL analysis, and Tableau for interactive business intelligence dashboards.

**Dataset disclaimer:** All business records are synthetic and do not represent actual company performance.

## Business Objectives

- Analyse revenue and transaction trends.
- Identify high-performing products and outlets.
- Compare gross profit and gross profit margins.
- Identify opportunities for improving profitability.
- Provide actionable recommendations to support business decisions.

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Python (pandas) | Data cleaning and validation |
| Jupyter Notebook | Reproducible data preparation |
| PostgreSQL | Relational database and SQL analysis |
| SQL | Joins, aggregations, CTEs and window functions |
| Tableau | Interactive sales and profitability dashboards |
| Git and GitHub | Version control and portfolio documentation |

## Data Model

The database consists of five tables:

- `fact_sales` — Sales transactions and financial measures.
- `fact_payments` — Payment methods and payment amounts.
- `dim_products` — Product names, categories, prices and costs.
- `dim_outlets` — Outlet names and locations.
- `dim_customers` — Customer identifiers and segments.

## Project Workflow

### 1. Data Preparation

Generated and cleaned a realistic synthetic Malaysian F&B dataset.

Tasks included handling duplicate records, missing values, inconsistent date formats, numeric data types and invalid identifiers.

### 2. PostgreSQL Database

Designed a relational database using primary and foreign keys.

Loaded cleaned data into PostgreSQL through a Python ETL workflow.

### 3. SQL Business Analysis

Analysed:

- Monthly and annual revenue.
- Sales by outlet and state.
- Product and category performance.
- Gross profit and gross profit margins.
- Customer segments and payment methods.

### 4. Tableau Dashboards

**Sales Performance Dashboard**

![Sales Dashboard](screenshots/sales_dashboard.png)

Includes revenue, transactions, average transaction value, sales trends, top products and outlet performance.

**Profitability Performance Dashboard**

![Profitability Dashboard](screenshots/profitability_dashboard.png)

Includes gross profit, gross profit margin, product costs, monthly profit trends, category profitability and outlet margins.

## Key Business Findings

Replace these placeholders with validated results:

1. **Revenue Growth:** Revenue changed by [X%] between 2024 and 2025.
2. **Outlet Performance:** [Outlet] generated the highest revenue of RM [X].
3. **Product Profitability:** [Product] generated RM [X] in gross profit.
4. **Profit Margin:** [Category/Outlet] recorded a gross profit margin of [X%].

## Business Recommendations

1. Investigate low-margin, high-volume products to identify potential pricing or cost improvements.
2. Compare product mix and discount patterns across outlets with different margins.
3. Use historical sales patterns to support inventory, staffing and promotional planning.

These recommendations are proposed actions, not verified financial improvements.

## Project Structure

- `data/` — Synthetic raw and processed datasets.
- `notebooks/` — Python cleaning and ETL notebooks.
- `sql/` — Database and analytical SQL scripts.
- `tableau/` — Tableau workbook.
- `screenshots/` — Dashboard images.
- `insights/` — Executive summary and business recommendations.

## How to Reproduce

1. Install Python and the dependencies in `requirements.txt`.
2. Create the PostgreSQL database `malaysian_fnb_bi`.
3. Execute the database schema SQL scripts.
4. Generate or obtain the synthetic dataset and run the cleaning notebook.
5. Run the Python ETL notebook to populate PostgreSQL.
6. Execute the SQL analysis scripts.
7. Open the Tableau workbook and connect it to the PostgreSQL data source.

## Project Limitations

- The dataset is synthetic.
- Profitability refers to gross profit, not net profit.
- Operating expenses, rent, labour costs and inventory wastage are not fully captured.
- Recommendations require real-world testing before financial benefits can be established.
