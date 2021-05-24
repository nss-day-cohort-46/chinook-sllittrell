SELECT InvoiceId, count(InvoiceLineId)  FROM InvoiceLine
GROUP BY InvoiceId;