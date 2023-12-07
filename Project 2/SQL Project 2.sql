/* Ilham Rayhan*/
/* Data Cleaning for furniture_data.csv */

/* Check purchase_price */
SELECT purchase_price  
FROM `molten-sandbox-407303.furniture_data.customer_data` 
ORDER BY purchase_price DESC

/* Check purchase_price as float */
SELECT CAST(purchase_price AS FLOAT64)  
FROM `molten-sandbox-407303.furniture_data.customer_data` 
ORDER BY CAST(purchase_price AS FLOAT64) DESC

/* Check purchase_price on December*/
SELECT date, purchase_price
FROM `molten-sandbox-407303.furniture_data.customer_data` 
WHERE date between '2020-12-01' and '2020-12-31'

/* Check purchase_price on December (date only)*/
SELECT CAST(date as date) as date_only, purchase_price
FROM `molten-sandbox-407303.furniture_data.customer_data` 
WHERE date between '2020-12-01' and '2020-12-31'

/* Check coach preference based on color*/
SELECT CONCAT(product_code, product_color) as new_product_code
FROM `molten-sandbox-407303.furniture_data.customer_data` 
WHERE product = 'couch'

/* Check product and fill null value with product code */
SELECT COALESCE(product, product_code) as product_info
FROM `molten-sandbox-407303.furniture_data.customer_data` 