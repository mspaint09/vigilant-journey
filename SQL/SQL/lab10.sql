CHAPTER 11
Hands On
=====================================================================
1.
SELECT count(*) FROM books WHERE category = 'COOKING';
2.
SELECT count(*) FROM books WHERE retail > 30.00;
3.
SELECT MIN(pubdate) FROM books;
4.
WITH SOURCE AS(
SELECT c.customer#,c.firstname, c.lastname,o.order#,sum((oi.paideach b.
COST) * quantity) as total_profit
FROM customers c
JOIN orders o ON o.customer# = c.customer#
JOIN orderitems oi ON oi.order# = o.order#
JOIN books b ON b.isbn = oi.isbn
WHERE c.customer# = 1017
GROUP BY c.customer#,c.firstname, c.lastname,o.order#
)
SELECT s.customer#,s.firstname, s.lastname,sum(s.total_profit o.
shipcost)
FROM SOURCE s JOIN orders o ON o.order# = s.order#
GROUP BY s.customer#,s.firstname, s.lastname;
5.
SELECT MIN(retail) FROM books WHERE upper(category) = 'COMPUTER';
6.
WITH src AS(
SELECT o.order#,sum((oi.paideach b.
COST) * quantity) as total_profit
FROM orders o
JOIN orderitems oi ON oi.order# = o.order#
JOIN books b ON b.isbn = oi.isbn
GROUP BY o.order#
)
SELECT to_char(avg(sum(s.total_profit nvl(
o.shipcost,0))),'$999999.99') average_profit
FROM src s JOIN orders o ON o.order# = s.order#
GROUP BY s.order#;
7.
SELECT customer#,c.firstname,c.lastname, count(o.order#)
FROM orders o INNER JOIN customers c USING(customer#)
GROUP BY customer#,c.firstname,c.lastname
ORDER BY customer#;
8.
SELECT p.name,b.category,avg(b.retail) average_price
FROM books b JOIN publisher p USING(pubid)
WHERE b.CATEGORY IN ('CHILDREN','COMPUTER')
GROUP BY p.NAME,b.CATEGORY
having avg(b.retail) > 50;
9.
SELECT customer#,c.lastname,c.firstname,c.address,c.city,c.state,c.zip,c.referred,c.region,c.email
FROM orders o
JOIN orderitems oi USING(order#)
JOIN customers c USING(customer#)
WHERE upper(shipstate) IN ('FL','GA')
GROUP BY customer#,c.lastname,c.firstname,c.address,c.city,c.state,c.zip,c.referred,c.region,c.email
HAVING sum(oi.paideach) > 80;
10.
SELECT MAX(b.retail) most_expnsv_bk
FROM books b
JOIN publisher p on p.pubid = b.pubid
JOIN bookauthor ba ON ba.isbn = b.isbn
JOIN author A ON A.authorid = ba.authorid
WHERE A.fname = 'LISA' AND A.lname = 'WHITE';
===========================================================================
CHAPTER 10
ADVANCED CHALLENGE
===========================================================================
SELECT b.isbn,b.title,b.pubdate,p.name,b.cost,b.retail,to_char((b.retail b.
cost)/b.cost,'00.99')||'%' as margin,count(oi.quantity) how_many
FROM books b
JOIN orderitems oi ON oi.isbn = b.isbn
JOIN publisher p on p.pubid = b.pubid
WHERE (b.retail b.
COST)/b.COST < 0.55
GROUP BY b.isbn,b.title,b.pubdate,p.name,b.COST,b.retail,(b.retail b.
COST)/b.COST;
/**
ISBN TITLE PUBDATE NAME COST RETAIL MARGIN HOW_MANY
9959789321
EBUSINESS
THE EASY WAY 01MAR06
PUBLISH OUR WAY 37.9 54.5 00.44% 2
0401140733 REVENGE OF MICKEY 14DEC05
PRINTING IS US 14.2 22 00.55% 4
1915762492 HANDCRANKED COMPUTERS 21JAN05
AMERICAN PUBLISHING 21.8 25 00.15% 1
**/
