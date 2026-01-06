------------------------------------------------------------
-- 1. DATA CLEANING & VALIDATION
------------------------------------------------------------

-- Q1: Identify products with invalid pricing (MRP = 0)
SELECT *
FROM zepto_inventory
WHERE mrp = 0;

-- Q2: Convert pricing values from paise to rupees
UPDATE zepto_inventory
SET mrp = mrp / 100,
    discounted_price = discounted_price / 100;

-- Q3: Check for NULL values in critical columns
SELECT *
FROM zepto_inventory
WHERE product_name IS NULL
   OR category IS NULL
   OR mrp IS NULL
   OR discounted_price IS NULL;

------------------------------------------------------------
-- 2. EXPLORATORY DATA ANALYSIS (EDA)
------------------------------------------------------------

-- Q4: Total number of products
SELECT COUNT(*) AS total_products
FROM zepto_inventory;

-- Q5: Number of distinct product categories
SELECT COUNT(DISTINCT category) AS total_categories
FROM zepto_inventory;

-- Q6: In-stock vs out-of-stock distribution
SELECT stock_status,
       COUNT(*) AS product_count
FROM zepto_inventory
GROUP BY stock_status;

------------------------------------------------------------
-- 3. BUSINESS ANALYSIS – CORE QUESTIONS
------------------------------------------------------------

-- Q7: Top 10 products with highest discount percentage
SELECT product_name,
       discount_percentage
FROM zepto_inventory
ORDER BY discount_percentage DESC
LIMIT 10;

-- Q8: High-MRP products that are out of stock
SELECT product_name,
       mrp
FROM zepto_inventory
WHERE stock_status = 'Out of Stock'
ORDER BY mrp DESC;

-- Q9: Estimated revenue by product category
SELECT category,
       SUM(discounted_price * available_quantity) AS estimated_revenue
FROM zepto_inventory
GROUP BY category;

-- Q10: Premium-priced products with low discounts
SELECT product_name,
       mrp,
       discount_percentage
FROM zepto_inventory
WHERE mrp > (SELECT AVG(mrp) FROM zepto_inventory)
  AND discount_percentage < 10;

-- Q11: Categories with highest average discount
SELECT category,
       AVG(discount_percentage) AS avg_discount
FROM zepto_inventory
GROUP BY category
ORDER BY avg_discount DESC;

------------------------------------------------------------
-- 4. ADVANCED ANALYSIS
------------------------------------------------------------

-- Q12: Best value products based on price per gram
SELECT product_name,
       discounted_price / weight_grams AS price_per_gram
FROM zepto_inventory
WHERE weight_grams > 0
ORDER BY price_per_gram;

-- Q13: Product classification by weight
SELECT product_name,
       CASE
           WHEN weight_grams < 500 THEN 'Low'
           WHEN weight_grams BETWEEN 500 AND 2000 THEN 'Medium'
           ELSE 'Bulk'
       END AS weight_category
FROM zepto_inventory;

-- Q14: Total inventory weight per category
SELECT category,
       SUM(weight_grams * available_quantity) AS total_inventory_weight
FROM zepto_inventory
GROUP BY category;

-- Q15: Rank products by discount within each category
SELECT product_name,
       category,
       discount_percentage,
       RANK() OVER (PARTITION BY category ORDER BY discount_percentage DESC) AS discount_rank
FROM zepto_inventory;
