SELECT invoice.Total, 
    customer.FirstName customerFirstName,
    customer.LastName customerLastName,
    customer.country, 
    employee.FirstName employeeFirstName,
    employee.LastName employeeLastName
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
ORDER BY CustomerLastName;
