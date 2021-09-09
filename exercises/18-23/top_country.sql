SELECT Country, '$'||MAX(totalSale) saleAmount
FROM (
SELECT BillingCountry Country , sum(i.total) totalSale FROM Invoice i
GROUP BY BillingCountry)