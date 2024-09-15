SELECT * FROM pizza_sales

SELECT SUM (total_price) AS Total_Revenue from pizza_sales

SELECT SUM (total_price) / COUNT (DISTINCT order_id) AS Avg_Order_value FROM pizza_sales

SELECT SUM (quantity) AS Total_Pizza from pizza_sales

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) /  CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Avg_Pizzas_per_order FROM pizza_sales

SELECT DATENAME (DW, order_date) AS order_day , COUNT (DISTINCT order_id) AS Total_orders from pizza_sales GROUP BY DATENAME(DW, order_date)

SELECT DATENAME (MONTH, order_date) AS Month_Name , COUNT (DISTINCT order_id) AS Total_orders from pizza_sales GROUP BY DATENAME(MONTH, order_date)

SELECT pizza_category, SUM (total_price) as Total_Sales, SUM (total_price) * 100/ (SELECT SUM(total_price) FROM pizza_sales) AS PCT FROM pizza_sales GROUP BY pizza_category

SELECT pizza_category,SUM (total_price) as Total_Sales, SUM (total_price) * 100/  (SELECT SUM(total_price) FROM pizza_sales) AS PCT  FROM pizza_sales WHERE MONTH (order_date)=1 GROUP BY pizza_category

SELECT pizza_size, CAST(SUM (total_price)AS DECIMAL(10,2)) AS Total_Sales, CAST(SUM (total_price) * 100/ (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL (10,2)) AS PCT FROM pizza_sales GROUP BY pizza_size

SELECT TOP 5 pizza_name , SUM (total_price) AS Total_Revenue FROM pizza_sales GROUP BY pizza_name ORDER BY Total_Revenue DESC

SELECT TOP 5 pizza_name , SUM (total_price) AS Total_Revenue FROM pizza_sales GROUP BY pizza_name ORDER BY Total_Revenue ASC

SELECT TOP 5 pizza_name , SUM (quantity) AS Total_Quantity FROM pizza_sales GROUP BY pizza_name ORDER BY Total_Quantity ASC

