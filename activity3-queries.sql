/* Activity 3 Queries */

/* 1: Find the name and address of customers who have ordered a product from Viet Trinh */
SELECT fname, lname, caddress
FROM customers
WHERE (fname, lname) IN (
    SELECT cfname, clname
    FROM orders
    WHERE Sname = 'Viet Trinh');

/* 2: Give the name and chain of all suppliers located in Mountain View that offer a MegaPC for less than $1,000. */
SELECT sname, chain
FROM suppliers
WHERE saddress LIKE '%Mountain View%' AND sname IN (
	SELECT sname
	FROM offers
	WHERE prodname = 'MegaPC' AND price < 1000
);

/* 3: Give the name and address of suppliers that don’t offer a MegaPC. */
SELECT sname, saddress
FROM suppliers
WHERE sname NOT IN (
	SELECT sname
	FROM offers
	WHERE Prodname = 'MegaPC'
);

/* 4: List all customers who have an account greater than all customers from Mountain View. */
SELECT fname, lname
FROM customers
WHERE account > all(
	SELECT account
	FROM customers
	WHERE caddress LIKE '%Mountain View%'
);

-- 5: List the names of all suppliers who offer the best price on some product.
select DISTINCT SName
from offers AS allOffers 
where Price <= all 
		(select Price 
		 from offers AS bestOffers
		 where allOffers.Prodname = bestOffers.Prodname);

-- 6: Find all suppliers that offer a MegaPC, but no TinyMac.
SELECT *
FROM suppliers as S
WHERE not exists (
	SELECT sname
	FROM offers
	WHERE prodname = 'TinyMac' AND sname = S.sname
) AND exists (
	SELECT sname
	FROM offers
	WHERE prodname = 'MegaPC' AND sname = S.sname
);
-- 7: What is the total number of suppliers ?
SELECT COUNT(sname)
FROM suppliers;

-- 8: How many different products are offered ?
SELECT COUNT(prodname)
FROM products;

-- 9: What is the minimum and maximum price for products offered by Davis Lumber ?
SELECT MIN(price), MAX(price)
FROM offers
WHERE sname = 'Davis Lumber';

-- 10: What is the total price for the products ordered by the customer Scott Tiger ?
SELECT SUM(price * quantity)
FROM orders, offers
WHERE orders.cfname = 'Scott' 
	AND orders.clname = 'Tiger'
	AND orders.prodname = offers.prodname
	AND orders.sname = offers.sname
;
-- 11: For each supplier, list the name of the supplier and the total number of products the supplier offers.
SELECT sname, count(prodname)
FROM suppliers, offers
WHERE suppliers.sname = offers.sname;

-- 12: What is the minimum total quantity of all orders for a product?
CREATE VIEW totalQuantity AS 
	SELECT prodname, SUM(quantity) as total
	FROM ORDERS
	GROUP BY prodname;
SELECT MIN(total)
FROM totalQuantity;