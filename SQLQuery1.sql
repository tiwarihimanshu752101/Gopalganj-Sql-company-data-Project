Create database Company_Info;

use Company_Info;
Go

Select *
from Sales;



-- 1. Find The Row Number Of Each Sale Based On Net Sales From Highest To Lowest.
Select Employee_Name,
Net_Sales,
Row_Number() over( order by Net_Sales DESC) as RowNumber
from Sales;

-- 2. Find The Row Number Of Each Sale Separately For Each City Based On Net Sales.
Select City,
Net_Sales,
Row_Number() over (Partition by City order by Net_Sales) as RowNumber
from Sales;

-- 3. Find The Rank Of All Sales Based On Net Sales From Highest To Lowest.
Select Order_ID,
Employee_Name,
Net_Sales,
Rank() Over (order by Net_Sales Desc) as Ranking
from Sales;
-- 4. Find The Rank Of Sales Separately Within Each City Based On Net Sales.
Select City,
Net_Sales,
Rank() over (Partition by City order by  Net_Sales desc) as RankingOfCities
from Sales;
-- 5. Find The Dense Rank Of All Employees Based On Their Profit From Highest To Lowest.
select Employee_ID,
Employee_Name,
Profit,
Dense_Rank() over(Order by Profit desc) as DEnseRank
from Sales;
-- 6. Find The Dense Rank Of Employees Separately Within Each Department Based On Profit.
SElect Employee_Id,
Employee_Name,
Department,
Profit,
Dense_Rank() over(Partition by Department order by Profit Desc) as ProfitRank
from Sales;
-- 7. Calculate The Total Net Sales Of The Entire Company On Every Row Using SUM Window Function.
SElect Order_ID,
Order_Date,
Net_Sales,
Sum(Net_Sales) over() as TotalNetSales
from Sales;
-- 8. Calculate The Total Net Sales Of Each City On Every Sale Row Using PARTITION BY.
Select City,
Net_Sales,
sum(Net_Sales) over(Partition by City ) as TotalNetSale
from Sales;

-- 9. Calculate The Average Net Sales Of Each City On Every Sale Row Using A Window Function.
Select City,
Net_Sales,
Avg(Net_SAles) over (Partition by City) as AvgNetSales
from Sales;
-- 10. Calculate The Running Total Of Net Sales Based On Order Date.
Select Order_Date,
Net_Sales,
Sum(Net_Sales) over(Order by Order_Date Desc) as RunningTotal
from Sales;
-- 11. Calculate The Running Total Of Net Sales Separately For Each City Based On Order Date.
SElect City,
Order_Date,
Net_Sales,
Sum(Net_Sales) Over(Partition by City Order by Order_Date ASc) as TotalRunning
From Sales;
-- 12. Find The Previous Sale Amount For Every Sale Using LAG.
Select Order_ID,
Order_Date,
Net_Sales,
Lag(Net_Sales) over(Order by Order_Date) as Lagging
from Sales;

-- 13. Find The Next Sale Amount For Every Sale Using LEAD.
SElect Order_ID,
Order_Date,
Net_Sales,
Lead(Net_Sales) over(order by Order_Date ) as Leading
from Sales;
-- 14. Find The Difference Between Current Sale And Previous Sale Using LAG.
Select Order_ID,
Order_Date,
Net_Sales,
Lag(Net_Sales) over(Order by Order_Date) as PreviousSales,
Net_Sales - Lag(Net_Sales) over (order by Order_Date) as Sales_Diff
from Sales;
-- 15. Find The Highest Net Sales In Each City Using MAX Window Function.
SElect City,
Net_Sales,
Max(Net_Sales) over(Partition by City) as MaxSales
from Sales;

-- 16. Find All Sales Whose Net Sales Is Greater Than The Average Net Sales Of The Company.
select order_id,
employee_name,
city,
net_sales
from sales
where net_sales > (select avg(net_sales) from sales);


-- 17. Find All Sales Whose Profit Is Greater Than The Average Profit Of The Company.
select order_id,
employee_name,
profit
from sales
where profit > (select avg(profit) from sales);

-- 18. Find The Employee Who Has The Highest Net Sales.
select employee_name,
net_sales
from sales
where net_sales = (select max(net_sales) from sales);


-- 19. Find All Sales From The City Having The Highest Total Net Sales.
select order_id,
city,
employee_name,
net_sales
from sales
where city = (
select top 1 city
from sales
group by city
order by sum(net_sales) desc);

-- 20. Find Employees Whose Net Sales Is Greater Than The Overall Average Net Sales.
select employee_name,
net_sales
from sales
where net_sales > (select avg(net_sales) from sales);