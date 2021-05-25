SELECT Employee, MAX(totalSale) saleAmount, Date
FROM (
SELECT e.FirstName || e.LastName Employee , sum(i.total) totalSale, strftime('%Y',i.InvoiceDate) Date FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
WHERE Date ="2009"
ORDER BY EmployeeId)