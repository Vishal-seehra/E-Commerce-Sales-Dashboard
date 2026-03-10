# 📊 E-Commerce Sales & Performance Dashboard  

## 🎯 Project Overview
This project transforms raw e-commerce transactional data into a professional business intelligence dashboard.  
The workflow simulates a real-world analytics pipeline by storing data in a MySQL database, performing validation and analysis using SQL, and building an interactive Power BI dashboard to monitor revenue, customer behavior, and product performance.

The final dashboard enables dynamic exploration of sales trends, top products, high-value customers, and geographic revenue distribution.

---

## 🛠️ Technical Stack
**Database:** MySQL (Data storage & querying)  
**Visualization:** Microsoft Power BI  
**Data Processing:** Power Query, SQL  
**Analytics:** Trend analysis, anomaly detection  
**Data Modeling:** Field parameterization & categorical data optimization

---

## 🚀 Data Pipeline (ETL Process)

### 1️⃣ Data Cleaning
- Cleaned raw transactional data using Power Query and SQL.
- Handled missing values and corrected data types.
- Converted `CustomerID` and `Invoice` fields to categorical values.

---

### 2️⃣ Database Integration
- Imported the cleaned dataset into **MySQL**.
- Structured the dataset to simulate an enterprise data environment.
- Enabled efficient querying for analytics and reporting.

---

### 3️⃣ SQL Analysis
Validated the dataset using SQL queries to compute key metrics:

- Total revenue per country
- Distinct count of customers and invoices
- Top 5 products by total quantity sold

---

### 4️⃣ Power BI Data Modeling
- Connected Power BI to MySQL using the database connector.
- Built measures and calculated fields for business KPIs.

Key KPIs included:
- Total Revenue
- Total Orders
- Total Customers
- Items Sold

---

### 5️⃣ Dashboard Development
Designed an interactive analytics dashboard featuring:

- KPI performance indicators
- Revenue trend over time
- Top-selling products
- Country-wise revenue distribution
- Top customers by revenue contribution
- Interactive filters for **date and country**

---

### 6️⃣ Advanced Analytics
Implemented analytical features including:

- Linear trend line to track long-term revenue growth
- Anomaly detection to identify unusual sales spikes or drops

---

## 📷 Dashboard Preview
<img width="1422" height="796" alt="Screenshot 2026-03-09 231930" src="https://github.com/user-attachments/assets/ee93b175-62fa-47f2-bdd9-71357ac7c5d3" />

---

## 📌 Key Skills Demonstrated
- SQL Data Analysis
- Data Cleaning & Transformation
- ETL Pipeline Design
- Business Intelligence Dashboarding
- Data Visualization
- Analytical Insight Generation

---

## 📂 Project Structure

E-Commercerce Sales Dashboard
│
├── dataset
│   └── cleaned_dataset1.csv
│
├── SQL_queries
│   └── SQL-analysis.sql
│
├── Power BI
│   └── Sales-analysis.pbix
│
└── README.md
