-- ##############################
-- PROFITABILITY ANALYSIS
-- ##############################

-- CHANGE DATABSE TO portfolio-projects
USE [portfolio-projects];

-- VIEW DATA
SELECT TOP 100 *
FROM RETAIL_SALES_ANALYSIS;

-- #################################################################
-- KEY QUESTIONS
-- 1. Which customers had the most profitable last 3 orders, having sales per customer >$1500?
-- 2. What time of day do customers from the East region, spend the most amount of money?
-- 3. What price ranges are most profitable?
-- 4. Is Clothing more profitable in one region vs. the average?
-- 5. How has profitability trended overtime?
-- #################################################################

-- # QUESTION 1 - Which customers had the most profitable last 3 orders, having sales per customer >$1500?
SELECT TOP 10 CUSTOMER_ID
    ,ROUND(AVG(PROFIT),0) AS AVG_PROFIT
FROM (
    SELECT CUSTOMER_ID
        ,ORDER_DATE
        ,PROFIT
        ,TOTAL_SALES
        ,RANK() OVER(PARTITION BY CUSTOMER_ID ORDER BY ORDER_DATE DESC) AS ORDER_NBR
    FROM RETAIL_SALES_ANALYSIS
) RANKED
WHERE ORDER_NBR <= 3
GROUP BY CUSTOMER_ID
HAVING SUM(TOTAL_SALES) > 1500
ORDER BY AVG_PROFIT DESC;

-- # QUESTION 2 - What time of day do customers from the East region, spend the most amount of money?
WITH a AS (
    SELECT RIGHT(ORDER_DATE,7) AS DT
        ,ROUND(SUM(TOTAL_SALES),0) AS TTL_SALES
    FROM RETAIL_SALES_ANALYSIS
    WHERE REGION = 'East'
    GROUP BY ORDER_DATE
)

SELECT DT
    ,ROUND(SUM(TTL_SALES),0) AS TTL_SALES
FROM a
GROUP BY DT
ORDER BY TTL_SALES DESC;

-- # QUESTION 3 - What price ranges are most profitable?
WITH a AS (
    SELECT *
        ,CASE
            WHEN UNIT_PRICE < 20 THEN '<$20'
            WHEN UNIT_PRICE >= 20 AND UNIT_PRICE < 40 THEN '$10-$39.99'
            WHEN UNIT_PRICE >= 40 AND UNIT_PRICE < 60 THEN '$40-$59.99'
            WHEN UNIT_PRICE >= 60 AND UNIT_PRICE < 80 THEN '$60-$79.99'
            WHEN UNIT_PRICE >= 80 AND UNIT_PRICE < 100 THEN '$80-$99.99'
            ELSE '+$100'
        END AS UNIT_PRICE_BUCKET
    FROM RETAIL_SALES_ANALYSIS
)
SELECT UNIT_PRICE_BUCKET
    ,ROUND(SUM(PROFIT)/SUM(QUANTITY),2) AS AVG_UNIT_PROFIT
    ,ROUND(SUM(PROFIT) / SUM(TOTAL_SALES),2) AS AVG_PROFIT_MARGIN
FROM a
GROUP BY UNIT_PRICE_BUCKET
ORDER BY AVG_UNIT_PROFIT DESC;

-- # QUESTION 4 - Is Clothing more profitable in one region vs. the average?
SELECT COALESCE(REGION, 'ALL REGIONS') AS REGION
    ,ROUND(SUM(PROFIT),0) AS TTL_PROFIT
    ,ROUND(AVG(PROFIT),2) AS AVG_PROFIT
    ,ROUND(SUM(PROFIT) / SUM(TOTAL_SALES),2) AS AVG_PROFIT_MARGIN
FROM RETAIL_SALES_ANALYSIS
WHERE PRODUCT_CATEGORY = 'Clothing'
GROUP BY ROLLUP(REGION)
ORDER BY TTL_PROFIT DESC;

-- # QUESTION 5 - How has profitability trended overtime?
WITH a AS (
SELECT CAST (ORDER_DATE AS date) AS DT
    ,SUM(PROFIT) AS TTL_PROFIT
    ,ROUND(SUM(PROFIT) / SUM(TOTAL_SALES),2) AS AVG_PROFIT_MARGIN
FROM RETAIL_SALES_ANALYSIS
GROUP BY ORDER_DATE
)

SELECT DT
    ,ROUND(SUM(TTL_PROFIT),0) AS TTL_PROFIT
    ,ROUND(AVG(AVG_PROFIT_MARGIN),2) AS AVG_PROFIT_MARGIN
FROM a
GROUP BY DT
ORDER BY DT



