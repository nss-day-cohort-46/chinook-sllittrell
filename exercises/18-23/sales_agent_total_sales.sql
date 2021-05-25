SELECT Employee.FirstName || Employee.LastName 'salesAgent', count(i.InvoiceId) FROM Invoice i
JOIN Customer ON Customer.CustomerId = i.CustomerId
LEFT JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
WHERE title = 'Sales Support Agent'
GROUP BY EmployeeId;