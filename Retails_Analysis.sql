
Create Database Retaildb

Use Retaildb

--Import CSV file us9ing import flat file

Select * from Retail_Transactions

--Top 5 Customer who spent most

Select top 5 Invoice_ID, Sum(Total) as TotalSpent
from Retail_Transactions
group by Invoice_ID
order by TotalSpent desc;


--Top 5 Customer who spent less
Select top 5 Invoice_ID, Sum(Total) as TotalSpent
from Retail_Transactions
group by Invoice_ID
order by TotalSpent asc;

--Total revenue of branches
Select Branch, sum(Total) as TotalRevenue
from Retail_Transactions
group by Branch;


-- Total gross income for Per Product line

Select Product_line, Sum(gross_income) as AvgGrossIncome
from Retail_Transactions
group by Product_line;


-- avg gross income for Per Product line

Select Product_line, avg(gross_income) as AvgGrossIncome
from Retail_Transactions
group by Product_line;


--Number of transactions by Payment method
Select Payment, count(*) as TransactionCount
from Retail_Transactions
Group by Payment;


--Top 3 most frequently purchased product lines

Select top 3 Product_line, count(*) as Frequency
From Retail_Transactions
Group by Product_line
Order by Frequency desc;


-- Total Sales per Month
Select datename(month, Date) as SaleMonth, sum(Total) as MonthlySales
from Retail_Transactions
group by datename(month, Date)
order by MonthlySales desc;

--Average Rating by Customer type

Select Customer_type, avg(Rating) as AvgRating
from Retail_Transactions
Group by Customer_type;


-- Branch with highest average rating

Select top 1 Branch, avg(Rating) as AvgRating
from Retail_Transactions
Group by Branch
Order by AvgRating desc;


--all branches sales income

Select Branch, Sum(Total) as Total_Sales
from  Retail_Transactions
group by Branch;


--Male vs Female customers using Ewallet

Select Gender, Count(*) as CountCustomers
from Retail_Transactions
Where Payment = 'Ewallet'
group by Gender;


--Avg, Min, Max sales per branch
Select Branch, avg(Total) as AvgSale,
min(Total) as MinSale,
max(Total) as MaxSale
from Retail_Transactions
gROUP bY Branch;


