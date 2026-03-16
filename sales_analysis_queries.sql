CREATE database salesdb;
USE salesdb;

-- Top selling products
SELECT product, SUM(sales) AS total_sales
FROM sales_data1
GROUP BY product
ORDER BY total_sales DESC;

-- Sales by region
SELECT region, SUM(sales) AS total_sales
FROM sales_data1
GROUP BY region;

-- Monthly sales
SELECT MONTH(order_date) AS month, SUM(sales)
FROM sales_data1
GROUP BY MONTH(order_date);
