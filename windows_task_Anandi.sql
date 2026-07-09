--SQL Window Aggregate Functions
select *  from Sales.Orders
/* TASK 1:
   Find the Total Number of Orders and the Total Number of Orders for Each Customer
*/
select OrderID,
count(OrderID)over()as Total_orders,
count(OrderID)over(partition by customerID) as Total_sales
from  Sales.Orders



/* TASK 2:
   - Find the Total Number of Customers
   - Find the Total Number of Scores for Customers
   - Find the Total Number of Countries
*/
select *,
count(customerID)over()as Total_customers,
count(Score)over() as Total_score,
count(country)over()as Total_country
from  Sales.Customers

/* TASK 3:
   Check whether the table 'OrdersArchive' contains any duplicate rows
*/
select *,
count(*) over(partition by OrderID,ProductID,CustomerID,SalesPersonID) as New
from Sales.OrdersArchive

/* TASK 4:
   - Find the Total Sales Across All Orders 
   - Find the Total Sales for Each Product
*/
select *,
sum(sales) OVER() as Total_sales,
sum(sales) over(partition by ProductID) as Total_sales_product
from Sales.Orders

/* TASK 5:
   Find the Percentage Contribution of Each Product's Sales to the Total Sales
*/
select orderID,
ProductID,
sales,
sum(sales)over() as Total_sales,
round(
sum(sales)*100/sum(sales)over(),2)as per_contribution
from sales.Orders


/* TASK 6:
   - Find the Average Sales Across All Orders 
   - Find the Average Sales for Each Product
*/
select *,
avg(sales) OVER() as Total_sales,
avg(sales) over(partition by ProductID) as Total_sales_product
from Sales.Orders

/* TASK 7:
   Find the Average Scores of Customers
*/
select *,

avg(Score)over() as Avg_score
from sales.Customers

/* TASK 8:
   Find all orders where Sales exceed the average Sales across all orders
*/
SELECT
    OrderID,
    ProductID,
    Sales
FROM (
    SELECT
        OrderID,
        ProductID,
        Sales,
        AVG(Sales) OVER () AS Avg_Sales
    FROM sales.Orders
) AS t
WHERE Sales > Avg_Sales

/* TASK 9:
   Find the Highest and Lowest Sales across all orders
*/

/* TASK 10:
   Find the Lowest Sales across all orders and by Product
*/

/* TASK 11:
   Show the employees who have the highest salaries
*/

/* TASK 12:
   Find the deviation of each Sale from the minimum and maximum Sales
*/

/* TASK 13:
   Calculate the moving average of Sales for each Product over time
*/

/* TASK 14:
   Calculate the moving average of Sales for each Product over time,
   including only the next order
*/

-------------------------------------------------------------------------------

--SQL Window Ranking Functions

/* TASK 1:
   Rank Orders Based on Sales from Highest to Lowest
*/

/* TASK 2:
   Use Case | Top-N Analysis: Find the Highest Sale for Each Product
*/

/* TASK 3:
   Use Case | Bottom-N Analysis: Find the Lowest 2 Customers Based on Their Total Sales
*/

/* TASK 4:
   Use Case | Assign Unique IDs to the Rows of the 'Order Archive'
*/

/* TASK 5:
   Use Case | Identify Duplicates:
   Identify Duplicate Rows in 'Order Archive' and return a clean result without any duplicates
*/

/* TASK 6:
   Divide Orders into Groups Based on Sales
*/

/* TASK 7:
   Segment all Orders into 3 Categories: High, Medium, and Low Sales.
*/

/* TASK 8:
   Divide Orders into Groups for Processing
*/

/* TASK 9:
   Find Products that Fall Within the Highest 40% of the Prices
*/

-------------------------------------------------------------------------------------

--SQL Window Value Functions

/* TASK 1:
   Analyze the Month-over-Month Performance by Finding the Percentage Change in Sales
   Between the Current and Previous Months
*/

/* TASK 2:
   Customer Loyalty Analysis - Rank Customers Based on the Average Days Between Their Orders
*/

/* TASK 3:
   Find the Lowest and Highest Sales for Each Product,
   and determine the difference between the current Sales and the lowest Sales for each Product.
*/

--------------------------------------------------------------------------------