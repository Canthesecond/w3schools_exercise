SELECT * FROM w3schools.orders;

SELECT o.shipperID,s.ShipperName,SUM(p.Price*od.Quantity) FROM orders o
JOIN order_details od ON o.OrderID=od.OrderID
JOIN products p ON od.ProductID=p.ProductID
JOIN shippers s ON o.ShipperID=s.ShipperID
GROUP BY 1
ORDER BY 2;


