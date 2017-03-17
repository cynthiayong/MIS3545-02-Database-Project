/* Display all from all of the database tables */
Use IKEA_DATABASE
Select * 
FROM Customer;

Use IKEA_DATABASE
Select * 
FROM Payment;

Use IKEA_DATABASE
Select * 
FROM Vendor;

Use IKEA_DATABASE
Select * 
FROM OrderTable;

Use IKEA_DATABASE
Select *
FROM Product;

Use IKEA_DATABASE
Select * 
FROM Shipment;

Use IKEA_DATABASE
Select * 
FROM ProductCategory;

/* Find the total number of customers who used their VISA Credit Card to make the payment */

SELECT Count(P_CustomerID) as Total_Number_Customers, CreditCardType
FROM Payment
WHERE CreditCardType = 'VISA'
GROUP BY CreditCardType;

/* Show the names of all female customers who have shipping in the United States */

SELECT c.FirstName, c.LastName, c.Gender, s.ShipmentCounty
FROM Customer as c
INNER JOIN Shipment as s
ON c. CustomerID = s. s_CustomerID
WHERE Gender = 'Female' AND ShipmentCounty = 'United States'
GROUP BY FirstName, LastName, Gender, ShipmentCounty;

/* Display the customer’s first name, last name and email who spent more than $100 in one order */

SELECT c.FirstName, c.LastName, c.Email, p.SalesAmount_$
FROM Customer AS c
FULL OUTER JOIN OrderTable AS o
ON c.CustomerID = o.O_CustomerID
FULL OUTER JOIN Payment AS p
ON o.OrderID = p.P_OrderID
Where p.SalesAmount_$ >= 100

/* Display all product name and retail price where its retail price is greater than average retail price */

Select ProductName, RetailPrice_$
From Product
Where RetailPrice_$ > (Select AVG (RetailPrice_$) as Avg_Sales_Price from Product);

