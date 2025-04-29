SELECT * FROM sales_data.`online sales data`;

-- Calculate monthly revenue

SELECT 
    DATE_FORMAT(`Date`, '%Y-%m') AS Month,
    round(SUM(`Total Revenue`),2) AS Monthly_Revenue
FROM 
    `online sales data`
GROUP BY 
    DATE_FORMAT(`Date`, '%Y-%m')
ORDER BY 
    DATE_FORMAT(`Date`, '%Y-%m');
    
    
-- Analyze monthly revenue and order volume

SELECT 
    DATE_FORMAT(`Date`, '%Y-%m') AS Month,
    ROUND(SUM(`Total Revenue`), 2) AS Total_Monthly_Revenue,
    COUNT(`Transaction ID`) AS Total_Order_Volume
FROM 
    `online sales data`
GROUP BY 
    Month -- Use the alias here
ORDER BY 
    Month; -- Use the same alias here





