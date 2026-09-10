select * from orders;

#Total Orders
SELECT COUNT(*) as Total_orders FROM orders;

#Total Sales
SELECT SUM(Net_Amount) as Total_Sales
FROM orders;

#Top Products
SELECT Product,
SUM(Net_Amount) as sales
FROM orders
GROUP BY Product
ORDER BY sales DESC;

#Top Cities
SELECT City,
SUM(Net_Amount) as sales
FROM orders
GROUP BY City
order by sales DESC;

#Monthly Sales
SELECT Month,
SUM(Net_Amount) as Sales
FROM orders
GROUP BY Month;

#Highest Profit Product
SELECT Product,
SUM(Profit) as profit
FROM orders
GROUP BY Product
ORDER BY profit DESC;

#Payment Mode
SELECT Payment_Mode,
COUNT(*) as Total_orders
FROM orders
GROUP BY Payment_Mode;

#Cancelled Orders
SELECT *
FROM orders
WHERE Order_Status='Cancelled';
