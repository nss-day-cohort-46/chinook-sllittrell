SELECT Media, MAX(saleAmount) FROM
(SELECT mt.Name Media , count(il.InvoiceLineId) saleAmount FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
Group BY mt.MediaTypeId)