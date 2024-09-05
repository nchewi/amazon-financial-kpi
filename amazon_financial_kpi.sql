SELECT * FROM financial_metrics.amazon_financial_kpi;

-- Total Revenue by Month
SELECT `Date`, SUM(Revenue) AS Total_Revenue
FROM amazon_financial_kpi
GROUP BY `Date`
ORDER BY Total_Revenue DESC;


-- Total Expenses by Month
SELECT `Date`,
		SUM(COGS + Operating_Expenses + Marketing_Expenses + Administrative_Expenses + RD_Expenses) AS Total_Expenses
FROM amazon_financial_kpi
GROUP BY `Date`
ORDER BY Total_Expenses DESC;


-- Net Profit by Month
SELECT `Date`, SUM(Net_Profit) AS Total_Net_Profit
FROM amazon_financial_kpi
GROUP BY `Date`
ORDER BY Total_Net_Profit DESC;


-- Revenue by Product/Service
SELECT Product_Service, 
	   SUM(Revenue) AS Total_Revenue
FROM amazon_financial_kpi
GROUP BY Product_Service
ORDER BY Product_Service;


-- Expenses by Department/Business Unit
SELECT Department_Business_Unit,
	   SUM(COGS) AS Total_COGS,
       SUM(Operating_Expenses) AS Total_Operating_Expenses,
       SUM(Marketing_Expenses) AS Total_Marketing_Expenses,
       SUM(Administrative_Expenses) AS Total_Administrative_Expenses,
       SUM(RD_Expenses) AS Total_RD_Expenses
FROM amazon_financial_kpi
GROUP BY Department_Business_Unit
ORDER BY Department_Business_Unit;


-- Net profit by Product
SELECT Product_Service, 
	   SUM(Net_Profit) AS Total_Profit
FROM amazon_financial_kpi
GROUP BY Product_Service
ORDER BY Product_Service;



-- Profit by Department/Business Unit
 SELECT Department_Business_Unit, 
	   SUM(Net_Profit) AS Total_Profit
FROM amazon_financial_kpi
GROUP BY Department_Business_Unit
ORDER BY Department_Business_Unit;      




