# KAVIRA PRODUCTS DATASET IMPORTING AND EDA					KAVIRA PRODUCTS DATASET IMPORTING AND EDA				KAVIRA PRODUCTS DATASET IMPORTING AND EDA

Create database Kavira_Marketsquare;

Use Kavira_Marketsquare;

describe kavira_products;

select distinct category 
from kavira_products;

ALTER TABLE kavira_products
MODIFY Date_Added_to_Inventory DATE;

ALTER TABLE kavira_products
MODIFY `Unit_Price(Naira)` DECIMAL(10,2);

describe kavira_products;

ALTER TABLE kavira_products
MODIFY Product_ID VARCHAR(20) NOT NULL;

ALTER TABLE kavira_products
ADD PRIMARY KEY (Product_ID);

SELECT *
FROM kavira_products;


#EDA                    EDA                       EDA

SELECT *
FROM kavira_products;

Describe kavira_products;

Select count(*)
from kavira_products;

SELECT *
FROM kavira_products
LIMIT 100;

SELECT
    MIN(Date_Added_to_Inventory) AS earliest_date_added,
    MAX(Date_Added_to_Inventory) AS latest_date_added
FROM kavira_products;

SELECT *
FROM kavira_products;

SELECT count(DISTINCT category)
FROM kavira_products;

SELECT count(DISTINCT product_name)
FROM kavira_products;

SELECT DISTINCT product_name
FROM kavira_products;

SELECT
    Product_Name,
    COUNT(*) AS occurrences
FROM kavira_products
GROUP BY Product_Name
HAVING COUNT(*) > 1;

SELECT *
FROM kavira_products;

SELECT *
FROM kavira_products
WHERE Product_Name IN (
    SELECT Product_Name
    FROM kavira_products
    GROUP BY Product_Name
    HAVING COUNT(*) > 1
)
ORDER BY Product_Name;

SELECT COUNT(*) AS repeated_product_names
FROM (
    SELECT Product_Name
    FROM kavira_products
    GROUP BY Product_Name
    HAVING COUNT(*) > 1
) AS repeated_names;

Select * 
from kavira_products;

SELECT
    AVG(`Unit_Price(Naira)`) AS average_price,
    MIN(`Unit_Price(Naira)`) AS minimum_price,
    MAX(`Unit_Price(Naira)`) AS maximum_price
FROM kavira_products;

SELECT
    Product_ID,
    COUNT(*) AS occurrences
FROM kavira_products
GROUP BY Product_ID
HAVING COUNT(*) > 1;

select *
from kavira_products;

SELECT
    Product_ID,
    Product_Name,
   Category,
    `Unit_Price(Naira)`,
    Date_Added_to_Inventory,
    COUNT(*) AS occurrences
FROM kavira_products
GROUP BY
    Product_ID,
    Product_Name,
    Category,
    `Unit_Price(Naira)`,
    Date_Added_to_Inventory
HAVING COUNT(*) > 1;


SELECT
    COUNT(*) AS total_records,
    COUNT(*) - COUNT(Product_ID) AS missing_product_id,
    COUNT(*) - COUNT(Product_Name) AS missing_product_name,
    COUNT(*) - COUNT(Category) AS missing_product_category,
    COUNT(*) - COUNT(`Unit_Price(Naira)`) AS missing_unit_price,
    COUNT(*) - COUNT(Date_Added_to_Inventory) AS missing_date_added
FROM kavira_products;

SELECT *
FROM kavira_products
WHERE `Unit_Price(Naira)` IS NULL;

SELECT *
FROM kavira_products
WHERE Date_Added_to_Inventory IS NULL;

SELECT *
FROM kavira_products
WHERE `Unit_Price(Naira)` = 'Null';

SELECT *
FROM kavira_products;




# KAVIRA INVENTORY DATASET IMPORTING AND EDA				KAVIRA INVENTORY DATASET IMPORTING AND EDA				KAVIRA INVENTORY DATASET IMPORTING AND EDA

CREATE TABLE kavira_inventory (
    Product_ID VARCHAR(20),
    Branch VARCHAR(50),
    Batch_ID VARCHAR(20) PRIMARY KEY,
    Date_Received DATE,
    Quantity_in_Stock INT,
    Date_Sold_Out DATE
);

describe kavira_inventory;

select *
from kavira_inventory;


#EDA                    EDA                       EDA

describe kavira_inventory;

select *
from kavira_inventory;

Select count(*)
from kavira_inventory;

SELECT
    Batch_ID,
    COUNT(*) AS occurrences
FROM kavira_inventory
GROUP BY Batch_ID
HAVING COUNT(*) > 1;

SELECT
    MIN(Date_Received) AS earliest_Date_Received,
    MAX(Date_Received) AS latest_Date_Received
FROM kavira_inventory;

SELECT
    MIN(Date_Sold_Out) AS earliest_Date_Sold_Out,
    MAX(Date_Sold_Out) AS latest_Date_Sold_Out
FROM kavira_inventory;

select *
From kavira_inventory;

SET SQL_SAFE_UPDATES = 0;

UPDATE kavira_inventory
SET Branch = TRIM(Branch);

SET SQL_SAFE_UPDATES = 1;

select distinct branch
from kavira_restock;

select *
From kavira_inventory;

SELECT
    COUNT(*) AS total_records,
    COUNT(*) - COUNT(Product_ID) AS missing_Product_ID,
    COUNT(*) - COUNT(Branch) AS missing_Branch,
    COUNT(*) - COUNT(Batch_ID) AS missing_Batch_ID,
    COUNT(*) - COUNT(Date_Received) AS Date_Received,
    COUNT(*) - COUNT(Quantity_in_stock) AS Quantity_in_stock,
	COUNT(*) - COUNT(Date_Sold_Out) AS Date_Sold_Out
From kavira_inventory;

SELECT *
FROM kavira_inventory
WHERE Date_Sold_Out IS NULL;

select *
from kavira_inventory;

SELECT
    AVG(quantity_in_stock) AS average_quantity_in_stock,
    MIN(quantity_in_stock) AS minimum_quantity_in_stock,
    MAX(quantity_in_stock) AS maximum_quantity_in_stock
FROM kavira_inventory;

SELECT
    Product_ID,
   Branch,
   Batch_ID,
    Date_Received,
    Quantity_in_Stock,
    Date_Sold_Out,
    COUNT(*) AS occurrences
FROM kavira_inventory
GROUP BY
     Product_ID,
   Branch,
   Batch_ID,
    Date_Received,
    Quantity_in_Stock,
    Date_Sold_Out
HAVING COUNT(*) > 1;

select *
from kavira_inventory
where Product_ID = 'P0043';



#KAVIRA RESTOCK DATASET IMPORTING AND EDA						KAVIRA RESTOCK DATASET IMPORTING AND EDA					KAVIRA RESTOCK DATASET IMPORTING AND EDA

CREATE TABLE kavira_restock (
    Restock_ID VARCHAR(20) PRIMARY KEY,
    Product_ID VARCHAR(20),
    Branch VARCHAR(50),
    Restock_Date DATE,
    Quantity_Restocked INT
);
Describe kavira_restock;

SELECT COUNT(*) AS total_records
FROM kavira_restock;

SELECT Restock_ID, COUNT(*) AS occurrences
FROM kavira_restock
GROUP BY Restock_ID
HAVING COUNT(*) > 1;


#EDA                    EDA                       EDA

SELECT *
FROM kavira_restock;

Describe kavira_restock;

Select count(*)
from kavira_restock;

SELECT
    Restock_ID,
    COUNT(*) AS occurrences
FROM kavira_restock
GROUP BY Restock_ID
HAVING COUNT(*) > 1;

SELECT *
FROM kavira_restock
limit 100;

SELECT
    MIN(Restock_Date) AS earliest_date_restocked,
    MAX(Restock_Date) AS latest_date_restocked
FROM kavira_restock;

SELECT
    AVG(quantity_restocked) AS average_quantity,
    MIN(quantity_restocked) AS minimum_quantity,
    MAX(quantity_restocked) AS maximum_quantity
FROM kavira_restock;

SELECT *
FROM kavira_restock
limit 100;

SELECT
    COUNT(*) AS total_records,
    COUNT(*) - COUNT(Restock_ID) AS missing_restock_id,
    COUNT(*) - COUNT(Product_ID) AS missing_product_id,
    COUNT(*) - COUNT(Branch) AS missing_branch,
    COUNT(*) - COUNT(Restock_Date) AS Restock_Date,
    COUNT(*) - COUNT(Quantity_Restocked) AS quantity_restocked
FROM kavira_restock;

SELECT *
FROM kavira_restock
WHERE Quantity_Restocked IS NULL;

select *
from kavira_restock;

SELECT
    Restock_ID,
   Product_ID,
   Branch,
    Restock_Date,
    Quantity_Restocked,
    COUNT(*) AS occurrences
FROM kavira_restock
GROUP BY
    Restock_ID,
   Product_ID,
   Branch,
    Restock_Date,
    Quantity_Restocked
HAVING COUNT(*) > 1;

SET SQL_SAFE_UPDATES = 0;

UPDATE kavira_restock
SET Branch = TRIM(Branch);

SET SQL_SAFE_UPDATES = 1;

select distinct branch
from kavira_restock;

select *
from kavira_restock;

select distinct branch
from kavira_restock;

SELECT *
FROM kavira_restock
WHERE  Product_ID IN ('P0071', 'P0072');




# KAVIRA TRANSACTIONS DATASET IMPORTING AND EDA					KAVIRA DATSET TRANSACTIONS IMPORTING AND EDA			KAVIRA TRANSACTIONS DATASET IMPORTING AND EDA

CREATE TABLE kavira_transactions (
    Transaction_ID VARCHAR(20) PRIMARY KEY,
    Product_ID VARCHAR(20),
    Branch VARCHAR(50),
    Sale_Date DATE,
    Quantity_Sold INT
);

describe kavira_transactions;

select *
from kavira_transactions;


#EDA                    EDA                       EDA

select *
from kavira_transactions;

describe kavira_transactions;

Select count(*)
from kavira_transactions;

Select *
from kavira_transactions;

SELECT
   Transaction_ID,
    COUNT(*) AS occurrences
FROM kavira_transactions
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;

Select *
from kavira_transactions;

SELECT
    MIN(Sale_Date) AS earliest_Sale_Date,
    MAX(Sale_Date) AS latest_Sale_Date
from kavira_transactions;

select *
From kavira_transactions;

SET SQL_SAFE_UPDATES = 0;

UPDATE kavira_transactions
SET Branch = TRIM(Branch);

SET SQL_SAFE_UPDATES = 1;

select distinct branch
From kavira_transactions;

select *
From kavira_transactions;

SELECT
    COUNT(*) AS total_records,
     COUNT(*) - COUNT(Transaction_ID) AS missing_Transaction_ID,
    COUNT(*) - COUNT(Product_ID) AS missing_Product_ID,
    COUNT(*) - COUNT(Branch) AS missing_Branch,
    COUNT(*) - COUNT(Sale_Date) AS missing_Sale_Date,
    COUNT(*) - COUNT(Quantity_Sold) AS missing_Quantity_Sold
From kavira_transactions;

SELECT count(*)
FROM kavira_transactions
WHERE Product_ID IS NULL;

select *
from kavira_transactions;

SELECT
    AVG(quantity_sold) AS average_quantity_sold,
    MIN(quantity_sold) AS minimum_quantity_sold,
    MAX(quantity_sold) AS maximum_quantity_sold
FROM kavira_transactions;

select *
from kavira_transactions;

SELECT
    Transaction_ID,
    Product_ID,
   Branch,
    Sale_Date,
    Quantity_Sold,
    COUNT(*) AS occurrences
FROM kavira_transactions
GROUP BY
     Transaction_ID,
    Product_ID,
   Branch,
    Sale_Date,
    Quantity_Sold
HAVING COUNT(*) > 1;

#KAVIRA SELL-OUT THRESHOLD DATASET IMPORTING					KAVIRA SELL-OUT THRESHOLD DATASET IMPORTING				KAVIRA SELL-OUT DATASET THRESHOLD IMPORTING

CREATE TABLE kavira_product_thresholds (
  Product_ID VARCHAR(20) PRIMARY KEY,
  Product_Name VARCHAR(50),
  Category VARCHAR(70),
  Threshold_Days INT
);

select *
from kavira_product_thresholds;






# NUMBER OF SLOW-MOVING PRODUCTS				NUMBER OF SLOW-MOVING PRODUCTS				NUMBER OF SLOW-MOVING PRODUCTS

WITH batch_analysis AS (
    SELECT
        i.Product_ID,
        t.Threshold_Days,

        DATEDIFF(i.Date_Sold_Out, i.Date_Received) AS Days_to_Sell_Out,

        CASE
            WHEN DATEDIFF(i.Date_Sold_Out, i.Date_Received) > t.Threshold_Days
                THEN 'Slow'
            ELSE 'Normal'
        END AS Batch_Status

    FROM kavira_inventory i

    JOIN kavira_product_thresholds t
        ON i.Product_ID = t.Product_ID

    WHERE i.Date_Received >= '2025-01-01'
      AND i.Date_Received < '2026-01-01'
      AND i.Date_Sold_Out >= '2025-01-01'
      AND i.Date_Sold_Out < '2026-01-01'
      AND i.Date_Received IS NOT NULL
      AND i.Date_Sold_Out IS NOT NULL
      AND i.Date_Sold_Out >= i.Date_Received
),

slow_products AS (
    SELECT DISTINCT Product_ID
    FROM batch_analysis
    WHERE Batch_Status = 'Slow'
)

SELECT
    sp.Product_ID,
    p.Product_Name,
    p.Category,
    'Slow' AS Performance
FROM slow_products sp
JOIN kavira_products p
    ON sp.Product_ID = p.Product_ID
ORDER BY p.Category, p.Product_Name;


# NUMBER OF BATCHES PER SLOW MOVING PRODUCTS			NUMBER OF BATCHES PER SLOW MOVING PRODUCTS			NUMBER OF BATCHES PER SLOW MOVING PRODUCTS
SELECT 
    i.Product_ID,
    p.Product_Name,
    p.Category,
    COUNT(i.Batch_ID) AS Slow_Batches
FROM kavira_inventory i
JOIN kavira_product_thresholds t
    ON i.Product_ID = t.Product_ID
JOIN kavira_products p
    ON i.Product_ID = p.Product_ID
WHERE i.Date_Received >= '2025-01-01'
  AND i.Date_Received < '2026-01-01'
  AND i.Date_Sold_Out >= '2025-01-01'
  AND i.Date_Sold_Out < '2026-01-01'
  AND i.Date_Received IS NOT NULL
  AND i.Date_Sold_Out IS NOT NULL
  AND i.Date_Sold_Out >= i.Date_Received
  AND DATEDIFF(i.Date_Sold_Out, i.Date_Received) > t.Threshold_Days
GROUP BY
    i.Product_ID,
    p.Product_Name,
    p.Category
ORDER BY
    Slow_Batches DESC;


#PERCENTAGE OF ALL PRODUCTS REPRESENTED BY SLOW-MOVING PRODUCTS 			PERCENTAGE OF ALL PRODUCTS REPRESENTED BY SLOW-MOVING PRODUCTS

WITH batch_analysis AS (
    SELECT
        i.Product_ID,
        t.Threshold_Days,

        DATEDIFF(i.Date_Sold_Out, i.Date_Received) AS Days_to_Sell_Out,

        CASE
            WHEN DATEDIFF(i.Date_Sold_Out, i.Date_Received) > t.Threshold_Days
                THEN 'Slow'
            ELSE 'Normal'
        END AS Batch_Status

    FROM kavira_inventory i

    JOIN kavira_product_thresholds t
        ON i.Product_ID = t.Product_ID

    WHERE i.Date_Received >= '2025-01-01'
      AND i.Date_Received < '2026-01-01'
      AND i.Date_Sold_Out >= '2025-01-01'
      AND i.Date_Sold_Out < '2026-01-01'
      AND i.Date_Received IS NOT NULL
      AND i.Date_Sold_Out IS NOT NULL
      AND i.Date_Sold_Out >= i.Date_Received
),

slow_products AS (
    SELECT DISTINCT Product_ID
    FROM batch_analysis
    WHERE Batch_Status = 'Slow'
)

SELECT
    COUNT(*) AS Slow_Moving_Products,

    (SELECT COUNT(DISTINCT Product_ID)
     FROM kavira_products) AS Total_Products,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(DISTINCT Product_ID)
         FROM kavira_products),
        2
    ) AS Slow_Moving_Product_Percentage

FROM slow_products;


# DETAILS OF SLOW-MOVING PRODUCTS					DETAILS OF SLOW-MOVING PRODUCTS					DETAILS OF SLOW-MOVING PRODUCTS

WITH batch_analysis AS (
    SELECT 
         i.Batch_ID,
		i.Product_ID,
        p.Product_Name,
        p.Category,
       

        CASE
            WHEN DATEDIFF(i.Date_Sold_Out, i.Date_Received) > t.Threshold_Days
                THEN 'Slow'
            ELSE 'Normal'
        END AS Batch_Status

    FROM kavira_inventory i

    JOIN kavira_products p
        ON i.Product_ID = p.Product_ID

    JOIN kavira_product_thresholds t
        ON i.Product_ID = t.Product_ID

    WHERE i.Date_Received >= '2025-01-01'
      AND i.Date_Received < '2026-01-01'
      AND i.Date_Sold_Out >= '2025-01-01'
      AND i.Date_Sold_Out < '2026-01-01'
      AND i.Date_Received IS NOT NULL
      AND i.Date_Sold_Out IS NOT NULL
      AND i.Date_Sold_Out >= i.Date_Received
)

SELECT
	Batch_ID,
	Product_ID,
    Product_Name,
    Category
 

FROM batch_analysis

WHERE Batch_Status = 'Slow'

ORDER BY Product_ID, Batch_ID;


# STOCK VALUE OF SLOW-MOVING BATCHES 				STOCK VALUE OF SLOW-MOVING BATCHES				STOCK VALUE OF SLOW-MOVING BATCHES

WITH slow_batch_values AS (
    SELECT
        i.Batch_ID,
        i.Product_ID,
        p.Product_Name AS Product,
        i.Quantity_in_Stock AS Quantity,
        p.`Unit_Price(Naira)` AS Unit_Price,
        i.Quantity_in_Stock * p.`Unit_Price(Naira)` AS Stock_Value

    FROM kavira_inventory i

    JOIN kavira_products p
        ON i.Product_ID = p.Product_ID

    JOIN kavira_product_thresholds t
        ON i.Product_ID = t.Product_ID

    WHERE i.Date_Received >= '2025-01-01'
      AND i.Date_Received < '2026-01-01'
      AND i.Date_Sold_Out >= '2025-01-01'
      AND i.Date_Sold_Out < '2026-01-01'
      AND i.Date_Received IS NOT NULL
      AND i.Date_Sold_Out IS NOT NULL
      AND i.Date_Sold_Out >= i.Date_Received
      AND DATEDIFF(i.Date_Sold_Out, i.Date_Received) > t.Threshold_Days
)

SELECT
    Batch_ID,
    Product_ID,
    Product,
    Quantity,
    Unit_Price,
    Stock_Value
FROM slow_batch_values

UNION ALL

SELECT
    NULL AS Batch_ID,
    NULL AS Product_ID,
    'TOTAL' AS Product,
    NULL AS Quantity,
    NULL AS Unit_Price,
    SUM(Stock_Value) AS Stock_Value
FROM slow_batch_values;


# TOTAL STOCK VALUE OF ALL PRODUCTS		   			TOTAL STOCK VALUE OF ALL PRODUCTS						TOTAL STOCK VALUE OF ALL PRODUCTS

SELECT
    SUM(i.Quantity_in_Stock * p.`Unit_Price(Naira)`) AS Total_Stock_Value

FROM kavira_inventory i

JOIN kavira_products p
    ON i.Product_ID = p.Product_ID

WHERE i.Date_Received >= '2025-01-01'
  AND i.Date_Received < '2026-01-01'
  AND i.Date_Sold_Out >= '2025-01-01'
  AND i.Date_Sold_Out < '2026-01-01'
  AND i.Date_Received IS NOT NULL
  AND i.Date_Sold_Out IS NOT NULL
  AND i.Date_Sold_Out >= i.Date_Received;
  
  
# SLOW-MOVING STOCK VALUE AS PERCENTAGE OF TOTAL STOCK VALUE					SLOW-MOVING STOCK VALUE AS PERCENTAGE OF TOTAL STOCK VALUE

SELECT
    (SUM(CASE
        WHEN DATEDIFF(i.Date_Sold_Out, i.Date_Received) > t.Threshold_Days
        THEN i.Quantity_in_Stock * p.`Unit_Price(Naira)`
        ELSE 0
    END)
    /
    SUM(i.Quantity_in_Stock * p.`Unit_Price(Naira)`)) * 100
    AS Slow_Moving_Stock_Value_Percentage

FROM kavira_inventory i

JOIN kavira_products p
    ON i.Product_ID = p.Product_ID

JOIN kavira_product_thresholds t
    ON i.Product_ID = t.Product_ID

WHERE i.Date_Received >= '2025-01-01'
  AND i.Date_Received < '2026-01-01'
  AND i.Date_Sold_Out >= '2025-01-01'
  AND i.Date_Sold_Out < '2026-01-01'
  AND i.Date_Received IS NOT NULL
  AND i.Date_Sold_Out IS NOT NULL
  AND i.Date_Sold_Out >= i.Date_Received;
  
  
# PRODUCTS WITH MATCHING ALTERNATIVES             PRODUCTS WITH MATCHING ALTERNATIVES 					PRODUCTS WITH MATCHING ALTERNATIVES 

WITH slower_products AS (
    SELECT DISTINCT
        i.Product_ID,
        p.Product_Name,
        p.Category

    FROM kavira_inventory i

    JOIN kavira_products p
        ON i.Product_ID = p.Product_ID

    JOIN kavira_product_thresholds t
        ON i.Product_ID = t.Product_ID

    WHERE i.Date_Received >= '2025-01-01'
      AND i.Date_Received < '2026-01-01'
      AND i.Date_Sold_Out >= '2025-01-01'
      AND i.Date_Sold_Out < '2026-01-01'
      AND i.Date_Received IS NOT NULL
      AND i.Date_Sold_Out IS NOT NULL
      AND i.Date_Sold_Out >= i.Date_Received

      AND DATEDIFF(i.Date_Sold_Out, i.Date_Received) > t.Threshold_Days
)

SELECT
    s.Product_ID AS Slower_Product_ID,
    s.Product_Name AS Product,
    s.Category,
    a.Product_ID AS Alternative_Product_ID,
    a.Product_Name AS Alternative_Product

FROM slower_products s

JOIN kavira_products a
    ON s.Product_Name = a.Product_Name
   AND s.Product_ID <> a.Product_ID

ORDER BY
    s.Product_Name,
    s.Product_ID;
    
    
# PERFORMANCE COMPARISON OF SIMILAR PRODUCTS		  PERFORMANCE COMPARISON OF SIMILAR PRODUCTS			PERFORMANCE COMPARISON OF SIMILAR PRODUCTS

WITH product_performance AS (
    SELECT
        i.Product_ID,
        p.Product_Name,
        p.Category,

        CASE
            WHEN MAX(
                CASE
                    WHEN DATEDIFF(i.Date_Sold_Out, i.Date_Received) > t.Threshold_Days
                    THEN 1
                    ELSE 0
                END
            ) = 1
            THEN 'Slower Sell-Out Performance'
            ELSE 'Normal'
        END AS Performance_Status

    FROM kavira_inventory i

    JOIN kavira_products p
        ON i.Product_ID = p.Product_ID

    JOIN kavira_product_thresholds t
        ON i.Product_ID = t.Product_ID

    WHERE i.Date_Received >= '2025-01-01'
      AND i.Date_Received < '2026-01-01'
      AND i.Date_Sold_Out >= '2025-01-01'
      AND i.Date_Sold_Out < '2026-01-01'
      AND i.Date_Received IS NOT NULL
      AND i.Date_Sold_Out IS NOT NULL
      AND i.Date_Sold_Out >= i.Date_Received

    GROUP BY
        i.Product_ID,
        p.Product_Name,
        p.Category
)

SELECT DISTINCT
    s.Product_ID AS Product_ID,
    s.Product_Name AS Product,
    s.Category,
    s.Performance_Status AS Product_Performance,

    a.Product_ID AS Similar_Product_ID,
    a.Product_Name AS Similar_Product,
    a.Performance_Status AS Similar_Product_Performance

FROM product_performance s

JOIN product_performance a
    ON s.Product_Name = a.Product_Name
   AND s.Product_ID <> a.Product_ID

WHERE s.Performance_Status = 'Slower Sell-Out Performance'

ORDER BY
    s.Product_Name,
    s.Product_ID;
    
# PRODUCTS NEWLY INTRODUCED IN 2025			  PRODUCTS NEWLY INTRODUCED IN 2025				PRODUCTS NEWLY INTRODUCED IN 2025

WITH slower_products AS (
    SELECT DISTINCT
        i.Product_ID

    FROM kavira_inventory i

    JOIN kavira_product_thresholds t
        ON i.Product_ID = t.Product_ID

    WHERE i.Date_Received >= '2025-01-01'
      AND i.Date_Received < '2026-01-01'
      AND i.Date_Sold_Out >= '2025-01-01'
      AND i.Date_Sold_Out < '2026-01-01'
      AND i.Date_Received IS NOT NULL
      AND i.Date_Sold_Out IS NOT NULL
      AND i.Date_Sold_Out >= i.Date_Received

      AND DATEDIFF(i.Date_Sold_Out, i.Date_Received) > t.Threshold_Days
)

SELECT
    p.Product_ID,
    p.Product_Name AS Product,
    p.Date_Added_to_Inventory

FROM slower_products s

JOIN kavira_products p
    ON s.Product_ID = p.Product_ID

WHERE p.Date_Added_to_Inventory >= '2025-01-01'
  AND p.Date_Added_to_Inventory < '2026-01-01'

ORDER BY
    p.Product_Name,
    p.Date_Added_to_Inventory
    ;
    
    
# MONTHLY SALES TREND OF PRODUCTS WITH SLOW MOVEMENT (2024-2025)				MONTHLY SALES TREND OF PRODUCTS WITH SLOW MOVEMENT (2024-2025)
    
WITH slower_products AS (
    SELECT DISTINCT
        i.Product_ID
    FROM kavira_inventory i
    JOIN kavira_product_thresholds p
        ON i.Product_ID = p.Product_ID
    WHERE i.Date_Received >= '2025-01-01'
      AND i.Date_Received < '2026-01-01'
      AND i.Date_Sold_Out >= '2025-01-01'
      AND i.Date_Sold_Out < '2026-01-01'
      AND DATEDIFF(i.Date_Sold_Out, i.Date_Received) > p.Threshold_Days
)

SELECT
    t.Product_ID,
    p.Product_Name,
    YEAR(t.Sale_Date) AS Year,
    DATE_FORMAT(t.Sale_Date, '%b') AS Month,
    SUM(t.Quantity_Sold) AS Total_Quantity_Sold

FROM kavira_transactions t

JOIN slower_products s
    ON t.Product_ID = s.Product_ID

JOIN kavira_products p
    ON t.Product_ID = p.Product_ID

WHERE t.Product_ID IS NOT NULL
  AND t.Quantity_Sold IS NOT NULL
  AND t.Sale_Date >= '2024-01-01'
  AND t.Sale_Date < '2026-01-01'

GROUP BY
    t.Product_ID,
    p.Product_Name,
    YEAR(t.Sale_Date),
    MONTH(t.Sale_Date),
    DATE_FORMAT(t.Sale_Date, '%b')

ORDER BY
    t.Product_ID,
    Year,
    MONTH(t.Sale_Date);
    
    
# PRODUCT CATEGORIES WITH SLOWER SELL-OUT PERFORMANCE            PRODUCT CATEGORIES WITH SLOWER SELL-OUT PERFORMANCE

WITH product_performance AS (
    SELECT
        i.Product_ID,
        p.Product_Name AS Product,
        p.Category,
        CASE
            WHEN MAX(
                CASE
                    WHEN DATEDIFF(i.Date_Sold_Out, i.Date_Received) > t.Threshold_Days
                    THEN 1
                    ELSE 0
                END
            ) = 1
            THEN 'Slower Sell-Out Performance'
            ELSE 'Normal'
        END AS Performance_Status
    FROM kavira_inventory i
    JOIN kavira_products p
        ON i.Product_ID = p.Product_ID
    JOIN kavira_product_thresholds t
        ON i.Product_ID = t.Product_ID
    WHERE i.Date_Received >= '2025-01-01'
      AND i.Date_Received < '2026-01-01'
      AND i.Date_Sold_Out >= '2025-01-01'
      AND i.Date_Sold_Out < '2026-01-01'
      AND i.Date_Received IS NOT NULL
      AND i.Date_Sold_Out IS NOT NULL
      AND i.Date_Sold_Out >= i.Date_Received
    GROUP BY
        i.Product_ID,
        p.Product_Name,
        p.Category
)

SELECT
    Category,
    COUNT(*) AS Products_With_Slower_Sell_Out
FROM product_performance
WHERE Performance_Status = 'Slower Sell-Out Performance'
GROUP BY Category
ORDER BY Products_With_Slower_Sell_Out DESC;


#RESTOCKING FREQUENCY OF PRODUCTS WITH SLOWER SELL-OUT PERFORMANCE				#RESTOCKING FREQUENCY OF PRODUCTS WITH SLOWER SELL-OUT PERFORMANCE

SELECT
    r.Product_ID,
    p.Product_Name,
    p.Category,
    COUNT(r.Restock_ID) AS Restock_Events
FROM kavira_restock r
JOIN kavira_products p
    ON r.Product_ID = p.Product_ID
JOIN (
    SELECT DISTINCT i.Product_ID
    FROM kavira_inventory i
    JOIN kavira_product_thresholds t
        ON i.Product_ID = t.Product_ID
    WHERE i.Date_Received >= '2025-01-01'
      AND i.Date_Received < '2026-01-01'
      AND i.Date_Sold_Out >= '2025-01-01'
      AND i.Date_Sold_Out < '2026-01-01'
      AND DATEDIFF(i.Date_Sold_Out, i.Date_Received) > t.Threshold_Days
) s
    ON r.Product_ID = s.Product_ID
WHERE r.Restock_Date >= '2025-01-01'
  AND r.Restock_Date < '2026-01-01'
  AND r.Quantity_Restocked > 0
GROUP BY
    r.Product_ID,
    p.Product_Name,
    p.Category
ORDER BY
    Restock_Events DESC;