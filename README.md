# 📦 Inventory & Pricing Analytics for Quick-Commerce Platform  
### (Zepto Case Study – SQL-Based Analysis)

---

## 📌 Business Objective
Quick-commerce platforms like Zepto operate with thin margins, dynamic pricing, and fast-moving inventory.  
This project uses **SQL-based data analysis** to evaluate **pricing effectiveness, discount strategies, stock availability, and revenue contribution** at a product and category level.

The analysis follows a **real-world data analyst workflow**, from data cleaning to advanced analytical insights that support inventory and pricing decisions.

---

## 🛠 Tools & Technologies
- SQL (MySQL / PostgreSQL compatible)
- MySQL Workbench
- CSV Dataset (Quick-Commerce / Grocery Inventory)

---

## 🗂 Dataset Description
The dataset contains **product-level inventory information**, including:
- Product Name  
- Category  
- MRP  
- Discounted Price  
- Discount Percentage  
- Available Quantity  
- Weight (grams)  
- Stock Availability Status  

Each record represents a unique product SKU listed on the platform.

---

## 🧹 1. Data Cleaning & Validation

### Objective
Ensure pricing and inventory data accuracy before analysis.

### Questions Answered
1. Are there products with **invalid pricing values (MRP = 0)**?
2. Are price values stored in the **correct currency unit**?
3. Are there **missing (NULL) values** in critical columns?

### Explanation
Data cleaning is essential to avoid incorrect revenue, discount, and pricing calculations in downstream analysis.

---

## 📊 2. Exploratory Data Analysis (EDA)

### Objective
Understand the overall structure and composition of the inventory dataset.

### Questions Answered
4. How many **total products** are listed on the platform?
5. How many **distinct product categories** exist?
6. What is the **distribution of stock availability** (In-stock vs Out-of-stock)?

### Explanation
EDA provides a high-level understanding of inventory size, category spread, and stock health before deep analysis.

---

## 📈 3. Business Analysis – Core Questions

### Objective
Answer key **business-driven questions** related to pricing, discounts, inventory risk, and revenue.

### Questions Answered

7. Which products offer the **highest discount percentages**?  
   *Purpose:* Identify aggressive discounting that may impact margins or attract customers.

8. Which **high-MRP products** are currently out of stock?  
   *Purpose:* Highlight potential revenue loss due to stock unavailability of premium products.

9. What is the **estimated revenue contribution by product category**?  
   *Purpose:* Understand which categories contribute most to overall revenue.

10. Which **premium-priced products** are being sold with **low discounts**?  
    *Purpose:* Identify products with strong pricing power and better margin potential.

11. Which categories offer the **highest average discounts**?  
    *Purpose:* Detect categories where discounts are heavily used to drive sales.

---

## 🧠 4. Advanced Analytical Questions

### Objective
Perform deeper analysis to support pricing optimization and inventory planning.

### Questions Answered

12. Which products provide the **best value based on price per gram**?  
    *Purpose:* Compare true product value beyond listed price.

13. How can products be **classified by weight** (Low / Medium / Bulk)?  
    *Purpose:* Support logistics, storage, and inventory planning.

14. What is the **total inventory weight per category**?  
    *Purpose:* Assist warehouse capacity and supply-chain planning.

15. How do products **rank by discount percentage within each category**?  
    *Purpose:* Enable relative comparison of discount positioning using window functions.

---

## 🔍 Key Insights
- Certain categories consistently rely on **higher discounts**, impacting margins.
- High-MRP products tend to go **out of stock faster**, indicating strong demand.
- Bulk-weight products provide **better price-per-gram value**.
- Revenue contribution varies significantly across categories.

---

## 📌 Business Impact
- Identified discount-heavy categories for **margin optimization**
- Highlighted potential **revenue loss due to stock-outs**
- Supported inventory planning through **weight-based classification**
- Enabled data-driven **pricing and promotional decisions**

---

## 🧠 SQL Concepts Used
- Aggregate functions (SUM, AVG, COUNT)
- CASE statements
- Common Table Expressions (CTEs)
- Subqueries
- Data type conversions
- Window functions (RANK)

---

## 📁 Project Structure


zepto-sql-analysis/
│
├── dataset/
│ └── zepto_inventory_data.csv
│
├── sql_queries/
│ ├── 01_data_cleaning.sql
│ ├── 02_eda.sql
│ ├── 03_business_analysis.sql
│ └── 04_advanced_analysis.sql
│
├── README.md


---

## 📂 SQL File Mapping

| SQL File | Questions Covered |
|--------|------------------|
| 01_data_cleaning.sql | Q1 – Q3 |
| 02_eda.sql | Q4 – Q6 |
| 03_business_analysis.sql | Q7 – Q11 |
| 04_advanced_analysis.sql | Q12 – Q15 |
