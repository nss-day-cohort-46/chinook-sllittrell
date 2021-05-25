SELECT Track, MAX(saleAmount)NumberOfSales, Year
FROM (
SELECT t.Name Track , count(il.TrackId) saleAmount, strftime('%Y',i.InvoiceDate) Year FROM InvoiceLine il
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
WHERE Year = '2013'
Group BY il.TrackId)