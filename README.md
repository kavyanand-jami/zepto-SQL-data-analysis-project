# Zepto SQL Data Analysis Project

## 📌 Project Overview
This project focuses on analyzing product-level inventory data from Zepto using SQL. 
The goal is to clean raw data, explore key attributes, and derive meaningful business insights related to pricing, discounts, stock availability, and revenue estimation.

The project simulates a real-world data analyst workflow using MySQL/PostgreSQL-style SQL queries.

---

## 🛠 Tools & Technologies
- SQL (MySQL / PostgreSQL compatible)
- MySQL Workbench
- CSV Dataset (E-commerce / Grocery Inventory)

---

## 🗂 Dataset Description
The dataset contains product-level details such as:
- SKU ID
- Product Name & Category
- MRP & Discounted Price
- Discount Percentage
- Available Quantity
- Weight (in grams)
- Stock Availability

---

## 🧹 Data Cleaning Steps
- Removed products with invalid pricing (MRP = 0)
- Converted price values from paise to rupees
- Checked for NULL values across all key columns
- Verified duplicate product names across multiple SKUs

---

## 📊 Exploratory Data Analysis
- Total number of products
- Distinct product categories
- In-stock vs out-of-stock product count
- Products appearing under multiple SKUs

---

## 📈 Business Questions Answered
1. Top 10 best-value products based on discount percentage  
2. High-MRP products that are currently out of stock  
3. Estimated revenue by product category  
4. Premium products with low discounts  
5. Categories offering the highest average discount  
6. Best value products based on price per gram  
7. Product classification by weight (Low / Medium / Bulk)  
8. Total inventory weight per category  

---

## 🔍 Key Insights
- Certain categories offer consistently higher discounts
- High-MRP products tend to go out of stock faster
- Bulk-weight products provide better price-per-gram value
- Revenue contribution varies significantly across categories
