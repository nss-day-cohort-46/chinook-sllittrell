SELECT i.* , COUNT(il.InvoiceId) as lineItems FROM Invoice i
LEFT JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId