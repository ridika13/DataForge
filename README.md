# DataForge — End-to-End E-Commerce & Marketing Analytics

DataForge is an end-to-end analytics project built using the **Olist Brazilian E-Commerce and Marketing Funnel datasets**. It covers the analytics workflow from raw data ingestion and PostgreSQL data management to SQL-based business analysis and interactive Power BI dashboards.

The project combines technical data handling with business-focused analysis to understand e-commerce performance, customer behavior, seller acquisition, and marketing funnel effectiveness.

---

## 1. Business Context & Objectives

Olist is a Brazilian e-commerce platform connecting sellers and customers across multiple product categories.

The objective of DataForge is to analyze two connected business areas:

- Overall e-commerce performance
- Customer and seller behavior
- Product and category trends
- Order fulfillment and delivery performance
- Marketing funnel effectiveness (MQL to closed deals)
- Revenue profiles of acquired sellers

The project demonstrates how raw business data can be transformed into meaningful analytical insights.

---

## 2. Dataset Overview

The project uses publicly available Olist datasets covering two analytical domains:

**E-Commerce Transactions**
- Customers
- Orders
- Order items
- Sellers
- Products
- Payments
- Reviews
- Geolocation
- Product category translations

**Marketing Funnel**
- Marketing Qualified Leads (MQLs)
- Closed Deals (seller acquisition outcomes)

The e-commerce dataset contains nine source tables, while the marketing dataset contains two core tables.

Dataset descriptions and source links are documented in `02_data_sources/`.

---

## 3. Project Architecture

The repository follows a structured analytics workflow:

| Folder | Purpose |
|---|---|
| `02_data_sources` | Dataset sources and documentation |
| `03_ddl_table_creation` | Staging and final table definitions |
| `04_dml_data_load` | Data ingestion and transformation scripts |
| `05_data_validation` | Data quality and integrity checks |
| `06_star_schema` | Logical analytical data models |
| `07_Analytical_Insights` | SQL-based business analysis |
| `08_power_bi_dashboard` | Power BI reports and screenshots |

Each stage represents a part of the journey from raw data to business insights.

---

## 4. Data Modeling Strategy

### A. E-Commerce Analytics — Star Schema Design

A logical star schema was designed for transactional e-commerce analysis.

**Central fact table:** `Fact_Order_Items`

**Supporting dimensions:**
- Customers
- Products
- Sellers
- Orders
- Payments
- Reviews
- Geolocation
- Product Category Translation

The fact table uses item-level granularity: one row represents one product item within an order.

This design supports analysis of:
- Revenue and GMV
- Product and seller performance
- Delivery performance
- Customer purchasing behavior
- Freight costs and category trends

**Note:** The star schema is documented as a logical analytical design; the SQL analysis also uses the underlying relational tables.

Documentation: `06_star_schema/ecommerce/ecommerce_star_schema.md`

### B. Marketing Analytics — Funnel-Based Data Model

The marketing dataset uses a logical funnel model rather than a traditional star schema.

**Core tables:**
- `marketing_qualified_leads` — top of the funnel
- `marketing_closed_deals` — successfully acquired sellers

The tables are connected through the common key `mql_id`.

This supports:
- Lead-to-deal conversion analysis
- Funnel drop-off measurement
- Lead origin effectiveness
- Seller acquisition analysis
- Revenue profile analysis by business type

The model preserves the business meaning of the marketing acquisition process without unnecessary dimensional modeling.

Documentation: `06_star_schema/marketing/marketing_schema_design.md`

---

## 5. SQL Analytical Insights

PostgreSQL is used for data ingestion, table management, validation, and analytical querying.

The analysis addresses questions such as:

- How many marketing-qualified leads convert into closed deals?
- Which lead origins have the highest conversion rates?
- Which business types have higher declared monthly revenue?
- How does delivery time vary by seller business type?
- Which product categories and sellers perform best?
- What are the trends in customer reviews and order fulfillment?

SQL scripts and supporting documentation are available in `07_Analytical_Insights/`.

---

## 6. Power BI Dashboards

Interactive reports were developed using **Power BI Desktop**.

The report contains six pages:

### E-Commerce Performance
1. **Summary** — overall performance indicators and monthly revenue trends
2. **Customers** — customer-level analysis
3. **Orders** — order performance and fulfillment
4. **Sellers** — seller-level performance
5. **Categories** — product category analysis

### Marketing Funnel Performance
6. **Funnel Performance** — lead-to-deal conversion, lead origin performance, and acquired seller revenue profiles

The report includes KPI cards, charts, slicers, and interactive filtering.

**Dashboard file:** `DataForge_dashboard.pbix`

**[Download the Power BI Dashboard](https://drive.google.com/file/d/1-EGTtU_CZHfMbz80VmjdSml9SK9h26NS/view?usp=sharing)**

The `.pbix` file is hosted externally because of GitHub file-size limitations.

---

## 7. Tools & Technologies

- **Database:** PostgreSQL
- **Database Management:** pgAdmin 4
- **Query Language:** SQL
- **Business Intelligence:** Microsoft Power BI Desktop
- **Data Analysis:** SQL-based aggregation and analytical querying
- **Data Modeling:** Star schema design and funnel-based modeling
- **Reporting:** DAX measures and interactive dashboards

---

## 8. Key Outcomes

The marketing funnel analysis identified:

- **8,000** marketing-qualified leads
- **842** closed deals
- **10.53%** lead-to-deal conversion rate

The project also includes e-commerce analysis covering customer activity, order trends, seller performance, product categories, reviews, and delivery operations.

These outputs demonstrate how structured data analysis can support operational and growth-related business decisions.

---

## 9. Project Takeaways

DataForge demonstrates:

- A structured end-to-end analytics workflow
- PostgreSQL table creation and data ingestion
- Data validation and relational integrity checks
- Analytical SQL query development
- Understanding of dimensional modeling and funnel analytics
- Interactive Power BI dashboard development
- Translation of data into business-focused insights

---

## 10. Conclusion

DataForge brings together e-commerce transaction analysis and marketing funnel analytics in one project.

It demonstrates the process of working with raw datasets, organizing data, validating relationships, deriving insights, and presenting findings through interactive dashboards.

The focus is not only on analyzing data, but also on understanding the business questions behind it.

## Acknowledgements & Data Sources

- **Dataset:** [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
- **Marketing Dataset:** [Marketing Funnel by Olist](https://www.kaggle.com/datasets/olistbr/marketing-funnel-olist)
- **Project Reference:** [Olist End-to-End Data Analytics](https://github.com/Akil280301/Olist-end-to-end-data-analytics)

DataForge builds upon publicly available datasets and project references, with its own project organization, database setup, analytical workflow, documentation, and dashboard presentation.