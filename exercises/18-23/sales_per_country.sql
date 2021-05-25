SELECT BillingCountry, COUNT(InvoiceId) NumberOfSales FROM Invoice
GROUP BY BillingCountry
ORDER BY NumberOFSales DESC