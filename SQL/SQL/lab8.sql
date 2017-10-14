=====================================================================
CHAPTER 9
Hands On
=====================================================================
1.
SELECT b.title, p.contact, p.phone
FROM books b, publisher p WHERE b.pubid = p.pubid
ORDER BY b.title;
SELECT b.title, p.contact, p.phone
FROM books b JOIN publisher p USING(pubid)
ORDER BY b.title;
2.
SELECT o.*,c.lastname customer_lastname,c.firstname customer_firstname
FROM orders o, customers c
WHERE o.customer# = c.customer# AND o.shipdate IS NULL
ORDER BY o.orderdate;
SELECT o.order#,customer#,o.orderdate,o.shipdate,o.shipcity,o.shipstate, o.shipzip,o.shipcost
,c.lastname customer_lastname,c.firstname customer_firstname
FROM orders o JOIN customers c USING(customer#)
WHERE o.shipdate IS NULL
ORDER BY o.orderdate;
3.
SELECT c.*
FROM customers c, orders o, orderitems oi, books b
WHERE c.customer# = o.customer# AND o.order# = oi.order#
AND oi.isbn = b.isbn AND c.state = 'FL' AND b.CATEGORY = 'COMPUTER';
SELECT c.*
FROM customers c JOIN orders o ON c.customer# = o.customer#
JOIN orderitems oi ON o.order# = oi.order#
JOIN books b ON oi.isbn = b.isbn
WHERE UPPER(c.state) = 'FL' AND UPPER(b.CATEGORY) = 'COMPUTER';
4.
SELECT DISTINCT b.*
FROM orders o, customers c, orderitems oi, books b
WHERE o.customer# = c.customer# AND o.order# = oi.order# AND oi.isbn = b.isbn
AND lower(c.firstname) = 'jake' AND lower(c.lastname) = 'lucas';
SELECT DISTINCT b.*
FROM customers c
JOIN orders o ON o.customer# = c.customer#
JOIN orderitems oi ON o.order# = oi.order#
JOIN books b ON oi.isbn = b.isbn
WHERE lower(c.firstname) = 'jake' AND lower(c.lastname) = 'lucas';
5.
WITH SOURCE AS(
SELECT b.title, oi.paideach b.
COST profit, c.firstname, c.lastname
FROM customers c, orders o,orderitems oi,books b
WHERE o.customer# = c.customer#
AND o.order# = oi.order#
AND oi.isbn = b.isbn
AND lower(c.firstname) = 'jake'
AND lower(c.lastname) = 'lucas'
)SELECT DISTINCT * FROM SOURCE
ORDER BY 2 DESC;
WITH SOURCE AS(
SELECT b.title, oi.paideach b.
cost profit, c.firstname, c.lastname
FROM customers c
JOIN orders o ON o.customer# = c.customer#
JOIN orderitems oi ON o.order# = oi.order#
JOIN books b ON oi.isbn = b.isbn
WHERE lower(c.firstname) = 'jake' AND lower(c.lastname) = 'lucas'
)SELECT DISTINCT * FROM SOURCE
ORDER BY 2 DESC;
6.
SELECT b.*
FROM books b, bookauthor ba, author A
WHERE b.isbn = ba.isbn AND A.authorid = ba.authorid
AND LOWER(a.lname) = 'adams';
SELECT b.*
FROM books b
JOIN bookauthor ba ON b.isbn = ba.isbn
JOIN author A ON A.authorid = ba.authorid
WHERE LOWER(a.lname) = 'adams';
7.
SELECT p.gift
FROM books b, promotion p
WHERE b.retail BETWEEN p.minretail AND p.maxretail AND UPPER(b.title) like 'SHORTEST POEMS';
SELECT p.gift
FROM books b JOIN promotion p ON b.retail BETWEEN p.minretail AND p.maxretail
WHERE UPPER(b.title) = 'SHORTEST POEMS';
8.
SELECT a.*
FROM customers c, orders o,orderitems oi,books b,bookauthor ba,author A
WHERE o.customer# = c.customer# AND o.order# = oi.order#
AND oi.isbn = b.isbn AND b.isbn = ba.isbn AND ba.authorid = A.authorid
AND lower(c.firstname) = 'becca' AND lower(c.lastname) = 'nelson';
SELECT a.*
FROM customers c
JOIN orders o ON o.customer# = c.customer#
JOIN orderitems oi ON o.order# = oi.order#
JOIN books b ON oi.isbn = b.isbn
JOIN bookauthor ba ON b.isbn = ba.isbn
JOIN author A ON ba.authorid = A.authorid
WHERE lower(c.firstname) = 'becca' AND lower(c.lastname) = 'nelson';
9.
SELECT DISTINCT b.*,o.order#,c.state
FROM books b, orderitems oi,orders o,customers c
WHERE b.isbn = oi.isbn AND oi.order# = o.order# AND o.customer# = c.customer#
ORDER BY o.order#,c.state;
SELECT DISTINCT b.*,o.order#,c.state
FROM books b JOIN orderitems oi ON b.isbn = oi.isbn
JOIN orders o ON oi.order# = o.order#
JOIN customers c ON o.customer# = c.customer#
ORDER BY o.order#,c.state;
10.
SELECT e.last_name emp_lastname, e.first_name emp_firstname, m.lastname mgr_lastname, m.firstname mgr_firstname, e.job_title
FROM employees e, employees m
WHERE e.emp_id = m.mgr_id
ORDER BY m.lastname, m.firstname;
SELECT e.last_name emp_lastname, e.first_name emp_firstname, m.lastname mgr_lastname, m.firstname mgr_firstname, e.job_title
FROM employees e JOIN employees m ON e.emp_id = m.mgr_id
ORDER BY m.lastname, m.firstname;
===========================================================================
CHAPTER 9
ADVANCED CHALLENGE
===========================================================================
/******
From the promotions table, find the gift of each book based on the price of the book and the
gift price range in the promotions table;
From the orderitems and the books tables, calculate the total profit for each book and
finally, get the publisher name from the publishers table using the publisher id from the books
table
Below are the SQL statements
********/
/*** Promotions ****/
SELECT pb.NAME publisher_name,to_char(sum(oi.paideach b.
COST),'$99999.99') profit, p.gift
FROM promotion p
JOIN books b ON b.retail BETWEEN p.minretail AND p.maxretail
JOIN orderitems oi ON oi.isbn = b.isbn
JOIN publisher pb ON pb.pubid = b.pubid
GROUP BY pb.NAME,p.gift;
/**
PUBLISHER_NAME PROFIT GIFT
AMERICAN
PUBLISHING $3.20 BOOK LABELS
REEDNRITE
$18.10 BOOK COVER
AMERICAN PUBLISHING $24.90 FREE SHIPPING
REEDNRITE
$10.89 BOOKMARKER
REEDNRITE
$187.25 FREE SHIPPING
AMERICAN PUBLISHING $147.30 BOOK COVER
READING MATERIALS INC. $12.20 BOOK COVER
PUBLISH OUR WAY $33.20 BOOK COVER
PRINTING IS US $31.20 BOOK LABELS
READING MATERIALS INC. $52.15 BOOK LABELS
PRINTING IS US $16.55 BOOK COVER
11 rows selected
**/
/*** Nonperforming
(never sold a copy) books ****/
SELECT isbn FROM books
MINUS
SELECT DISTINCT isbn from orderitems;
/***
ISBN
0132149871
0299282519
4981341710
**/