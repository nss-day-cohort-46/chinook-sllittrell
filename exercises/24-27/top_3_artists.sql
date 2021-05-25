SELECT a.Name Artist , count(il.InvoiceLineId) saleAmount FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist a ON a.ArtistId = al.ArtistId
Group BY al.ArtistId
ORDER BY saleAmount DESC 
LIMIT 3