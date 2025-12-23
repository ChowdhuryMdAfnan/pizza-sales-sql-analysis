#  Pizza Sales Analysis (MySQL)

##  Project Overview
This project analyzes pizza sales data using MySQL to uncover business insights related to revenue, sales trends, and product performance.  
The analysis focuses on identifying key revenue drivers, customer demand patterns, and top- and low-performing products.

---

##  Business Problem
A pizza business wants to better understand its sales performance using historical order data.  
The objective is to answer questions such as:
- How much revenue is the business generating?
- Which pizzas, sizes, and categories sell the most?
- How do sales change over time?
- Which products underperform and may need optimization?

Insights from this analysis can support better pricing, inventory planning, and marketing decisions.

---

##  Dataset Description
The dataset consists of four CSV files:

| Table Name | Description |
|-----------|-------------|
| orders | Order-level information (date and time) |
| order_details | Line-item details for each order (fact table) |
| pizzas | Pizza size and price information |
| pizza_types | Pizza names, categories, and ingredients |

The data follows a **star schema** with `order_details` as the fact table.

---

##  Data Model
- **Fact Table:** `order_details`
- **Dimension Tables:** `orders`, `pizzas`, `pizza_types`

Relationships are defined using primary and foreign keys to support analytical queries.

---

##  Key Metrics (KPIs)
- Total Revenue
- Total Orders
- Total Pizzas Sold
- Revenue Trends (Daily & Monthly)

---

##  Analysis Performed
The project includes the following analyses:

- **KPI Analysis:** Overall business performance
- **Time-Based Analysis:** Daily and monthly revenue trends
- **Product Analysis:**
  - Revenue by pizza category
  - Pizzas sold by size
  - Top 5 best-selling pizzas
  - Bottom 5 worst-selling pizzas
- **Advanced SQL Analysis:**
  - Common Table Expressions (CTEs)
  - Window functions
  - Ranking pizzas by sales
  - Percentage contribution of each pizza to total sales

---

##  Tools & Technologies
- **Database:** MySQL 8+
- **Language:** SQL
- **Techniques Used:**
  - Aggregations
  - JOINs
  - CTEs
  - Window Functions (`RANK`, `SUM() OVER`)
- **Version Control:** Git & GitHub

---

## 📁 Repository Structure
pizza-sales-sql-analysis/
│
├── data/ # Raw CSV files
├── sql/ # SQL scripts for analysis
│ ├── 01_schema.sql
│ ├── 02_data_loading.sql
│ ├── 03_kpi_analysis.sql
│ ├── 04_time_analysis.sql
│ ├── 05_product_analysis.sql
│ └── 06_advanced_sql.sql
│
├── README.md
└── LICENSE

---

##  Key Insights
- A small number of pizzas contribute a significant portion of total sales.
- Certain pizza sizes significantly outperform others in terms of demand.
- Some pizzas consistently underperform and may require pricing or menu optimization.
- Sales show clear patterns over time, which can help with forecasting.

---

##  Next Steps
- Build an interactive **Power BI dashboard** using this dataset
- Add customer-level analysis if customer data becomes available
- Extend analysis with profitability and cost metrics

---

##  Author
Chowdhury Md Afnan


