SELECT Employee, MAX(totalSale) saleAmount
FROM (
SELECT e.FirstName || e.LastName Employee , sum(i.total) totalSale FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY EmployeeId)