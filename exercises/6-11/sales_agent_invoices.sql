SELECT Employee.FirstName, Employee.LastName, Invoice.* FROM Invoice
JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
WHERE title = 'Sales Support Agent'
ORDER BY EmployeeId;