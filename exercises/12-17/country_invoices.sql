SELECT  BillingCountry, count(BillingCountry) FROM Invoice
GROUP BY BillingCountry