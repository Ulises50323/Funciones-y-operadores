USE Northwind
--SMIS030921 ULISES ARQUIMIDES CRUZ VENTURA

-- 1- UTILIZAR LA FUNCION COUNT PARA OBTENER L cantidad de empleados agrupados por ciudadcount 
select City,
  count(EmployeeID) As Total_empleados
from Employees 
  group by City;

--2. Muestra el número de clientes, la primera fecha y la fecha más reciente de la tabla orders.

select count(Distinct CustomerID) CantidadClientes,
       max(OrderDate) FechaReciente, min(OrderDate) PrimeraFecha
from Orders

-- 3- Mostrar companyName de la tabla customers, en donde el país sea Mexico y la región no sea NULL. 

select CompanyName, Country 
from Customers
where Country = 'Mexico' 
and Region is not null

-- 4- Mostrar la cantidad de pedidos realizados por un cliente de la tabla orders en donde los pedidos sean mayores a 5 y menores a 10 (Muestre 3 resultados, el primero utilizando >=,<=; el segundo utilizando BETWEEN y el tercero utilizando IN)0
 
select CustomerID, count(OrderID) "Ordenes"
from Orders
group by CustomerID having count (OrderID) >= 5 AND count(OrderID) <= 10;

select CustomerID, count(OrderID) "Ordenes"
from Orders
group  by CustomerID having count(OrderID) BETWEEN 5 AND 10;

select CustomerID, count(OrderID) "Ordenes"
FROM Orders
group by CustomerID having count(OrderID) IN(5,6,7,8,9,10);

-- 5- Contar los nombres de productos que inician con la letra C 

SELECT COUNT (ProductID) As ProductosConC
  FROM Products
WHERE ProductName LIKE 'C%'
