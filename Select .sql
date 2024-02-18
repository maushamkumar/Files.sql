SELECT * FROM Sales_Data.product;

select ProductID from Sales_Data.product;

-- We gonna work on cloth dataset

-- Let's select ProductID and Brand name
select ProductID, Brand from Sales_Data.product;

-- Create new column with methemtical function making Rating count *
select ProductID, Brand;

-- Create new column called Price_Discount
select ProductID,  (price*0.2) as Price_Discount from Sales_Data.product;

ALTER TABLE Sales_Data.product
ADD Price_Discount DECIMAL(10, 2); -- Assuming the data type is DECIMAL and precision is 10 with 2 decimal places

alter table Sales_Data.product
drop column Price_Discount;

ALTER TABLE Sales_Data.product
ADD Price_Discount DECIMAL(10, 2); -- Assuming the data type is DECIMAL and precision is 10 with 2 decimal places

UPDATE Sales_Data.product
SET Price_Discount = price * 0.2;

-- create new column with mathemtical functions | Making Discounted Amount
select ProductID, Brand, Price, Price_Discount, Price - Price_Discount as 'Discount_amount' from Sales_Data.product;

SELECT ProductID, COUNT(Rating) AS RatingCount
FROM ProductRatings
GROUP BY ProductID;

select Brand, count(Rating) as RatingCount 
from Sales_Data.product
group by Brand;


-- Step 1: Add the new column RatingCount to the Sales_Data.product table
alter table Sales_Data.product
add column RatingCount decimal(10, 5);


-- Step 2: Update the RatingCount column with the count of ratings for each brand
UPDATE Sales_Data.product p
JOIN (
    SELECT Brand, COUNT(Rating) AS RatingCount
    FROM Sales_Data.product
    GROUP BY Brand
) counts ON p.Brand = counts.Brand
SET p.RatingCount = counts.RatingCount;
-- create new column with mathemtical functions | Making Discount Percentage
select Brand, Price, Price_Discount, ((Price - Price_Discount)/Price)*100 as 'Discount_percentage' from Sales_Data.product;

-- finding unique values
select distinct(Brand) as 'Brand Name' from Sales_Data.product;

select distinct(ProductName) as 'Product Name' from Sales_Data.product;

-- Adding where Clause
select Brand, Price from Sales_Data.product where Brand = 'Adidas';

select Brand, Price from Sales_Data.product where Brand = 'Zara';

select Brand, Size from Sales_Data.product where Size = 'XL';

select ProductD, Price, Brand, Color from Sales_Data.product where Color = 'White';

select ProductID,Brand, Size, category from Sales_Data.product where Category = "Men's Fashion";

select ProductID, Price, Rating, ProductName from Sales_Data.product where ProductName = 'Jeans';

-- Adding Distinct with where | Unique Products served by Adidas;

select distinct(Brand) from Sales_Data.product where Brand = 'Adidas';

select distinct(category) from Sales_Data.product where Category = "Men's Fashion";

select distinct(ProductName) from Sales_Data.product where ProductName = 'Jeans';

-- Products with Multiple Where Clause with And 
select ProductName, Brand, Price from Sales_Data.product where Brand='Adidas' and price= 40;
select ProductName, Price_Discount from Sales_Data.product where Price_Discount<20 and Price_Discount>10;

-- Products with between 
select Brand, ProductName, Price from Sales_Data.product where Price between 50 and 60;

-- Adding more filters
select productName, Brand,price, Rating from Sales_Data.product
where Brand = 'Adidas'
and Rating>4;

-- Let's go one steps ahead
select ProductName, Brand,Price,Rating from Sales_Data.product
where (price between 50 and 80)
and Brand = 'Adidas'
and Rating > 4;

-- one more 
select distinct(Brand) from Sales_Data.product
where Brand = 'Adidas';

select distinct(ProductName) from Sales_Data.product
where ProductName = 'Jeans';

-- using OR 
select ProductName, Brand, Price from Sales_Data.product
where (Brand = 'Adidas' or Brand = 'Zara')and (Price between 40 and 50); 

-- using not 
select ProductName, Brand, Price from Sales_Data.product
where not(Brand = 'Adidas' or Brand = 'Zara')and (Price between 40 and 50); 

-- using IN 
select ProductName, Brand, Price from Sales_Data.product
where Brand in ('Adidas', 'Zara');

-- using not in 
select ProductName, Brand, Price from Sales_Data.product
where Brand not in ('Adidas', 'Zara');