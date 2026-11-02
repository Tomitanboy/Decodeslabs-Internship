--DecodeLabs Data Analytics Task 3.


--KPI 
SELECT
    SUM(TotalPrice) AS
TotalOrderValue,
    AVG(TotalPrice) AS
AverageOrderValue,
    COUNT(OrderID) AS
TotalOrders,
    SUM(Quantity) AS
TotalQuantityOrdered
FROM DecodeLabs_Project_Task_3;


--Business Question 1: Product Performance
--Which products have the highest order value and quantity sold?
SELECT 
    Product,
    SUM(TotalPrice) AS 
TotalOrderValue,
    SUM(Quantity) AS 
TotalQuantityOrdered
FROM DecodeLabs_Project_Task_3
GROUP BY Product  
ORDER BY TotalOrderValue DESC;



--Business Question 2: Payment Methods
--Which payment method are most commonly used?
SELECT 
    PaymentMethod,
    COUNT(OrderID) AS 
NumberOfOrders
FROM DecodeLabs_Project_Task_3
GROUP BY PaymentMethod 
ORDER BY NumberOfOrders DESC;




--Business Question 3: Sales Performance
--How does the value of orders changes over time?
SELECT 
    YEAR(Date) AS OrderYear,
    MONTH(Date) AS OrderMonth,
    SUM(TotalPrice) AS 
MonthlyOrderValue
FROM DecodeLabs_Project_Task_3
GROUP BY
    YEAR(Date),
    MONTH(Date)   
ORDER BY 
    OrderYear,
    OrderMonth;



--Business Question 4: Order Status
--How are orders distributed across different order statuses
SELECT 
    OrderStatus,
    COUNT(OrderID) AS 
NumberOfOrders
FROM DecodeLabs_Project_Task_3
GROUP BY OrderStatus 
ORDER BY NumberOfOrders DESC;