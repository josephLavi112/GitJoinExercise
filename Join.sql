/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select p.Name, c.name
 from products as p
 inner join categories as c
 on p.CategoryID = c.CategoryID
 where c.name = "computers";
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select products.Name, products.Price, reviews.Rating 
from products
inner join reviews on reviews.ProductID = products.ProductID
where rating = 5;
 /* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
 select employees.FirstName, sum(sales.Quantity)
 from employees
 inner join sales on sales.EmployeeID = employees.EmployeeID
 group by employees.EmployeeID
 order by sum(sales.Quantity) desc;
  /* joins: find the name of the department, and the name of the category for Appliances and Games */
  select categories.Name, departments.Name
  from categories
  inner join departments on departments.DepartmentID = categories.DepartmentID
  where categories.Name = "appliances" or categories.Name= "games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 select products.Name, sum(sales.Quantity), sum(sales.PricePerUnit*sales.Quantity)
 from products
 inner join sales on sales.ProductID = products.ProductID
 where products.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select products.Name, reviews.Reviewer, reviews.Rating, reviews.Comment
from products
inner join reviews on reviews.ProductID = products.ProductID
where reviews.Rating = 1 and products.Name = "visio TV";


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
select employees.EmployeeID, FirstName, employees.LastName, products.Name, sales.Quantity
from employees
inner join sales on sales.EmployeeID = employees.EmployeeID
inner join products on sales.ProductID = products.ProductID
order by employees.EmployeeID;


