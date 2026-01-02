-- =====================================================
-- TABLE CREATION
-- =====================================================

DROP TABLE IF EXISTS zepto;

CREATE TABLE zepto (
    sku_id SERIAL PRIMARY KEY,
    category VARCHAR(120),
    name VARCHAR(150) NOT NULL,
    mrp NUMERIC(8,2),
    discountPercent NUMERIC(5,2),
    availableQuantity INTEGER,
    discountedSellingPrice NUMERIC(8,2),
    weightInGms INTEGER,
    outOfStock BOOLEAN,
    quantity INTEGER
);


🔹 3️⃣ DATA EXPLORATION SECTION (VERY IMPORTANT)
sql
Copy code
-- =====================================================
-- DATA EXPLORATION
-- =====================================================

-- Total number of products
SELECT COUNT(*) AS total_products
FROM zepto;

-- Distinct product categories
SELECT DISTINCT category
FROM zepto;

-- Check out-of-stock items
SELECT COUNT(*) AS out_of_stock_count
FROM zepto
WHERE outOfStock = TRUE;
This shows real analyst thinking.

🔹 4️⃣ BUSINESS QUESTIONS (THIS IS THE GOLD)
This is where recruiters decide.

sql
Copy code
-- =====================================================
-- BUSINESS ANALYSIS QUERIES
-- =====================================================

-- Average discount percentage by category
SELECT category,
       ROUND(AVG(discountPercent), 2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC;

-- Top 10 products by discounted selling price
SELECT name,
       discountedSellingPrice
FROM zepto
ORDER BY discountedSellingPrice DESC
LIMIT 10;

-- Products with high MRP but low discount
SELECT name, mrp, discountPercent
FROM zepto
WHERE mrp > 500 AND discountPercent < 5;
🧑‍💼 Recruiter POV:

“These are reporting-style questions. Hireable.”

🔹 5️⃣ INVENTORY & OPERATIONS INSIGHTS (VERY STRONG)
sql
Copy code
-- =====================================================
-- INVENTORY & OPERATIONS INSIGHTS
-- =====================================================

-- Products with low stock
SELECT name, availableQuantity
FROM zepto
WHERE availableQuantity < 10
ORDER BY availableQuantity;

-- Categories with highest out-of-stock products
SELECT category,
       COUNT(*) AS out_of_stock_items
FROM zepto
WHERE outOfStock = TRUE
GROUP BY category
ORDER BY out_of_stock_items DESC;
