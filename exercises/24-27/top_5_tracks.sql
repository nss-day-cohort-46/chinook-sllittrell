SELECT t.Name Track , count(il.InvoiceLineId) saleAmount FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
Group BY il.TrackId
ORDER BY saleAmount DESC 
LIMIT 5