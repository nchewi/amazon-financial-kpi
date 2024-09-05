# Financial KPI Dashboard Project

## Introduction
The objective of this project was to develop a comprehensive dashboard to monitor and track key financial metrics such as revenue, expenses, and profit margins. The aim was to provide real-time insights into the financial health of the organization, facilitating strategic decision-making. The project utilized SQL for data extraction and Power BI for creating the dashboard.

## Project Objective
The primary objective was to create a dynamic dashboard that offers real-time visibility into key financial metrics. By focusing on metrics such as revenue, expenses, and profit margins, the dashboard aims to provide a clear picture of the financial health of the organization. The insights derived from the dashboard are intended to support informed decision-making processes at various levels of management.

## Dataset Description
The dataset used in this project was generated from ChatGPT and designed to resemble Amazon’s financial data. It includes the following columns:

- **Date**: The date of the financial transaction.
- **Revenue**: Total income generated from sales of goods or services.
- **COGS (Cost of Goods Sold)**: The direct costs attributable to the production of the goods sold.
- **Operating Expenses**: Expenses incurred during regular business operations, excluding COGS.
- **Marketing Expenses**: Costs associated with promoting and selling products or services.
- **Administrative Expenses**: Overheads related to general administration.
- **R&D Expenses**: Costs related to research and development activities.
- **Gross Profit**: Revenue minus COGS.
- **Operating Profit**: Gross profit minus operating expenses.
- **Net Profit**: The actual profit after all expenses, taxes, and other costs have been deducted from revenue.
- **Gross Profit Margin**: Gross profit as a percentage of revenue.
- **Operating Profit Margin**: Operating profit as a percentage of revenue.
- **Net Profit Margin**: Net profit as a percentage of revenue.
- **Product/Service**: The specific product or service that generated the revenue.
- **Department**: The department responsible for the transaction or expense.

## SQL Data Extraction
SQL was employed to extract the following key metrics from the dataset:

### Total Revenue by Month
This metric provides a month-over-month analysis of revenue.

```sql
SELECT `Date`, SUM(Revenue) AS Total_Revenue
FROM amazon_financial_kpi
GROUP BY `Date`
ORDER BY Total_Revenue DESC;

# Financial KPI Dashboard Project

## Overview

This project involves the development of a comprehensive financial KPI dashboard using SQL for data extraction and Power BI for visualization. The dashboard provides real-time insights into key financial metrics, enabling more effective monitoring of financial performance and informed strategic decision-making.

## Data Extraction

The following SQL queries were used to extract relevant financial data:

### Total Expenses by Month

```sql
SELECT `Date`,
  SUM(COGS + Operating_Expenses + Marketing_Expenses + Administrative_Expenses + RD_Expenses) AS Total_Expenses
FROM amazon_financial_kpi
GROUP BY `Date`
ORDER BY Total_Expenses DESC;
```

### Net Profit by Month

```sql
SELECT `Date`, SUM(Net_Profit) AS Total_Net_Profit
FROM amazon_financial_kpi
GROUP BY `Date`
ORDER BY Total_Net_Profit DESC;
```

### Revenue by Product/Service

```sql
SELECT Product_Service, 
    SUM(Revenue) AS Total_Revenue
FROM amazon_financial_kpi
GROUP BY Product_Service
ORDER BY Product_Service;
```

### Expenses by Department

```sql
SELECT Department_Business_Unit,
    SUM(COGS) AS Total_COGS,
    SUM(Operating_Expenses) AS Total_Operating_Expenses,
    SUM(Marketing_Expenses) AS Total_Marketing_Expenses,
    SUM(Administrative_Expenses) AS Total_Administrative_Expenses,
    SUM(RD_Expenses) AS Total_RD_Expenses
FROM amazon_financial_kpi
GROUP BY Department_Business_Unit
ORDER BY Department_Business_Unit;
```

### Net Profit by Product

```sql
SELECT Product_Service, 
    SUM(Net_Profit) AS Total_Profit
FROM amazon_financial_kpi
GROUP BY Product_Service
ORDER BY Product_Service;
```

### Profit by Department

```sql
SELECT Department_Business_Unit, 
    SUM(Net_Profit) AS Total_Profit
FROM amazon_financial_kpi
GROUP BY Department_Business_Unit
ORDER BY Department_Business_Unit;
```

## Dashboard Development in Power BI

An interactive dashboard was developed in Power BI to provide real-time insights into the extracted financial metrics. The dashboard consists of the following key sections:

1. **Revenue Overview**: Graphical representation of monthly revenue trends with year-to-date comparisons.
2. **Expense Breakdown**: Detailed visualizations of expenses by month, department, and category.
3. **Profits**: Real-time tracking of profits across different products and departments.
4. **Product/Service Analysis**: Comprehensive view of product and service contributions to overall revenue and profit.
5. **Departmental Performance**: Insights into financial performance of various departments, focusing on cost centers and profit centers.

## Outcome and Insights

The dashboard provided actionable insights into the organization's financial performance:

- **Revenue Trends**: Identified peak months and seasonal variations for better forecasting and inventory management.
- **Expense Control**: Highlighted departments with high operational costs for targeted cost reduction initiatives.
- **Product Performance**: Revealed most profitable products/services to inform strategic decisions on product development and marketing.
- **Departmental Efficiency**: Showed which departments were most efficient in generating profit relative to expenses.

## Conclusion

The financial KPI dashboard successfully met project objectives by providing real-time insights into key financial metrics. It enables more effective monitoring of financial performance, trend identification, and informed strategic decision-making.

## Recommendations

1. **Continuous Monitoring**: Regularly update the dataset and dashboard to ensure ongoing relevance and accuracy.
2. **Further Analysis**: Consider expanding the dashboard to include more granular data, such as customer segments or geographic regions.
3. **Automation**: Automate data extraction and dashboard updates to enhance efficiency and reduce manual intervention.

This project demonstrates the value of integrating advanced data analysis tools into financial management processes, providing a comprehensive tool for strategic decision-making.
