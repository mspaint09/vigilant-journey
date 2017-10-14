CHAPTER 12
Hands On
=====================================================================
1.
SELECT title, retail FROM books
WHERE retail < (SELECT avg(retail) FROM books);
2.
SELECT * FROM books bk
WHERE COST < (SELECT avg(COST) FROM books b WHERE bk.CATEGORY = b.CATEGORY)
ORDER BY bk.cost;
3.
SELECT * FROM orders
WHERE shipstate = (SELECT shipstate FROM orders WHERE order# = 1014);
4.
SELECT o.order#,o.customer#,sum(oi.paideach * quantity) + (sum(o.shipcost)/count(oi.order#)) total_amount
FROM orders o
JOIN orderitems oi ON oi.order# = o.order#
GROUP BY o.order#,o.customer#
HAVING sum(oi.paideach * quantity) + (sum(o.shipcost)/count(oi.order#))
> (
SELECT sum(oi.paideach * quantity) + (sum(o.shipcost)/count(oi.order#))
FROM orders o
JOIN orderitems oi ON oi.order# = o.order#
WHERE o.order# = 1008
)
ORDER BY 1;
5.
SELECT a.*
FROM bookauthor ba
JOIN author A ON A.authorid = ba.authorid
WHERE ba.isbn = (
SELECT isbn
FROM orderitems
GROUP BY isbn
HAVING count(order#) in (
SELECT max(count(order#)) freq
FROM orderitems
GROUP BY isbn
)
);
6.
WITH src AS(
SELECT b.isbn,b.category
FROM customers c
JOIN orders o ON o.customer# = c.customer#
JOIN orderitems oi ON oi.order# = o.order#
JOIN books b ON b.isbn = oi.isbn
WHERE c.customer# = 1007
)SELECT *
FROM books b
WHERE b.category IN(SELECT DISTINCT category FROM src)
AND isbn NOT IN (SELECT isbn FROM src);
7.
SELECT shipcity, shipstate
FROM orders
WHERE (shipdate orderdate)
= (SELECT MAX(shipdate orderdate)
FROM orders);
8.
SELECT c.*,b.title
FROM customers c
JOIN orders o ON o.customer# = c.customer#
JOIN orderitems oi ON oi.order# = o.order#
JOIN books b ON b.isbn = oi.isbn
WHERE b.retail IN (SELECT MIN(retail) FROM books);
9.
WITH src AS(
SELECT b.isbn
FROM books b
JOIN bookauthor ba ON b.isbn = ba.isbn
JOIN author A ON A.authorid = ba.authorid
WHERE lower(A.fname) = 'james' AND lower(A.lname) = 'austin'
)SELECT count(distinct c.customer#)
FROM customers c
JOIN orders o ON o.customer# = c.customer#
JOIN orderitems oi ON oi.order# = o.order#
WHERE oi.isbn IN (SELECT isbn FROM src);
10.
SELECT * FROM books
WHERE pubid IN (
SELECT pubid FROM books
WHERE upper(title) = 'THE WOK WAY TO COOK'
);and
upper(title) != 'THE WOK WAY TO COOK'
===========================================================================
CHAPTER 12
ADVANCED CHALLENGE
===========================================================================
SELECT sum(paideach) * 0.015 surcharge FROM orderitems;
/**** Credit Card
SURCHARGE
19.89675
*****/
WITH src AS(
SELECT sum(paideach) order_total FROM orderitems
GROUP BY order#
)
SELECT sum(order_total) * 0.04 total_uncollectible FROM src
WHERE order_total > (SELECT avg(paideach) avg_sale FROM orderitems);
/**
TOTAL_UNCOLLECTIBLE
46.15
**/
/***
Comparing the two, the total uncollectible is 2x that of the credit card surcharge.
Eventhough there maybe no uncollectible for a particular period due to good economic conditions,
the risk is high. So I recommend to management to abandon the current payment system in favor of
credit card payments.
**/