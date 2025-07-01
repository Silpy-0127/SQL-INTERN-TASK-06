#Objective: Show each customer’s name along with the total amount they spent.
SELECT 
  Name AS CustomerName,
  (SELECT SUM(P.Amount)
   FROM Payments P
   JOIN Orders O ON P.OrderID = O.OrderID
   WHERE O.CustomerID = C.CustomerID) AS TotalSpent
FROM Customers C;


#Objective: Get names of customers who placed at least one order above ₹2000.
SELECT Name
FROM Customers
WHERE CustomerID IN (
  SELECT CustomerID
  FROM Orders
  WHERE OrderID IN (
    SELECT OrderID
    FROM Payments
    WHERE Amount > 2000
  )
);


#Objective: Find all products whose price is greater than the average price of products in the same category.
SELECT Name, Price
FROM Products P1
WHERE Price > (
  SELECT AVG(Price)
  FROM Products P2
  WHERE P1.CategoryID = P2.CategoryID
);


#Objective: List all sellers who have listed at least one product in inventory.
SELECT Name
FROM Sellers S
WHERE EXISTS (
  SELECT 1
  FROM Products P
  JOIN Inventory I ON P.ProductID = I.ProductID
  WHERE P.SellerID = S.SellerID
);


#Objective: Find total orders and total revenue using a derived table.
SELECT 
  COUNT(*) AS TotalOrders,
  SUM(TotalAmount) AS TotalRevenue
FROM (
  SELECT O.OrderID, SUM(P.Amount) AS TotalAmount
  FROM Orders O
  JOIN Payments P ON O.OrderID = P.OrderID
  GROUP BY O.OrderID
) AS OrderSummary;


#Objective: Show customers who ordered products from sellers based in 'Delhi'.
SELECT Name
FROM Customers
WHERE CustomerID IN (
  SELECT CustomerID
  FROM Orders
  WHERE OrderID IN (
    SELECT OrderID
    FROM OrderItems
    WHERE ProductID IN (
      SELECT ProductID
      FROM Products
      WHERE SellerID IN (
        SELECT SellerID
        FROM Sellers
        WHERE Address = 'Delhi'
      )
    )
  )
);


#Objective: Get the name of the customer who spent the most.
SELECT Name
FROM Customers
WHERE CustomerID = (
  SELECT O.CustomerID
  FROM Orders O
  JOIN Payments P ON O.OrderID = P.OrderID
  GROUP BY O.CustomerID
  ORDER BY SUM(P.Amount) DESC
  LIMIT 1
);
