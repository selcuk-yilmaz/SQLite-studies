SELECT name,composer
FROM tracks;

SELECT *
FROM tracks;

SELECT DISTINCT composer
FROM tracks;

SELECT DISTINCT AlbumId,MediaTypeId
FROM tracks;

SELECT name,TrackId
from tracks
where composer="Jorge Ben";

SELECT *
FROM invoices
WHERE total>25;

SELECT *
FROM invoices
WHERE total<15
LIMIT 5;

SELECT *
FROM invoices
WHERE total>10
ORDER by total DESC
LIMIT 2;

SELECT *
FROM invoices
WHERE BillingCountry != "Canada"
ORDER by total ASC
LIMIT 10;

SELECT InvoiceId,CustomerId,total
FROM invoices
ORDER by CustomerId ASC,total DESC;

SELECT name
FROM tracks
WHERE name like "B%S";

SELECT InvoiceDate
FROM invoices
where InvoiceDate BETWEEN "2008-01-01" AND "2011-12-31 00:00:00"
ORDER by InvoiceDate DESC
LIMIT 1;

SELECT FirstName,LastName
from customers
where country in ("Belgium","Norway");

SELECT FirstName,LastName
from customers
where country = "Belgium" or country = "Norway";

SELECT Composer,name
from tracks
where Composer like "%Zappa%";

SELECT count(*) as abc
from tracks;

SELECT count(composer) as abc
from tracks;

SELECT DISTINCT composer
from tracks;

SELECT count(*) as abc
from tracks
WHERE Composer IS NOT NULL;

SELECT AlbumId, count(*) AS ABC
FROM tracks
GROUP BY AlbumId
ORDER BY ABC DESC;

SELECT name, Min(Milliseconds)
FROM tracks;

SELECT name, max(Milliseconds)
FROM tracks;

SELECT *
from tracks
where Milliseconds<(SELECT avg (Milliseconds) from tracks); 

SELECT composer, count(*)
FROM tracks
GROUP by Composer;

SELECT count(composer)
FROM tracks;

SELECT tracks.name , genres.name
FROM tracks
inner JOIN genres on tracks.GenreId=genres.GenreId;



