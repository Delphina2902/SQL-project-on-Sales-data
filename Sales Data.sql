SELECT * FROM `sql project1`.customer;

Use `sql project1`;


DESCRIBE customer;

# to find out the distinct channel.
Select Distinct channel
from customer;

#to find out is there any Null value.
SELECT * 
FROM customer
WHERE 'Order ID' IS NULL 
   OR 'Cust ID' IS NULL 
   OR Gender IS NULL 
   OR Age IS NULL 
   OR 'Age Group' IS NULL 
   OR Date IS NULL 
   OR Month IS NULL 
   OR Status IS NULL 
   OR Channel IS NULL 
   OR Category IS NULL 
   OR Size IS NULL 
   OR Qty IS NULL 
   OR Currency IS NULL 
   OR Amount IS NULL;
   
#how much sales as per age group.
SELECT `Age Group`, SUM(Amount) AS TotalSales
FROM customer
GROUP BY `Age Group`
ORDER BY TotalSales DESC;


#total sales as per month wise.
SELECT Month, SUM(Amount) AS TotalSales
FROM customer
GROUP BY Month
ORDER BY FIELD(Month, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');

#how much income as per channel wise.
SELECT Channel, SUM(Amount) AS TotalIncome
FROM customer
GROUP BY Channel
order by TotalIncome Desc;

#total number of sales.
SELECT Channel, COUNT(*) AS TotalSales
FROM customer
Group By Channel;

#which category is sold as per channel wise.
SELECT Channel, Category, COUNT(*) AS NumberOfSales
FROM customer
GROUP BY Channel, Category;

# Renamed the table name
RENAME TABLE customer TO Sales_Data;


