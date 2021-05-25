SELECT e.FirstName || e.LastName Employee , Count(c. CustomerId) Customers FROM Customer c 
JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId