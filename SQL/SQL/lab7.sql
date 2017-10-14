CHAPTER 7
Hands On
=====================================================================
1. 
SELECT lastname, firstname, state FROM customers
WHERE state = 'NJ';
 
2.
SELECT order#,shipdate FROM orders
where shipdate > to_date('Apr 1,2009','MM dd, YYYY');
 
3.
SELECT title,CATEGORY FROM books
WHERE CATEGORY != 'FITNESS';
 
4.
SELECT customer#,lastname, state FROM customers
WHERE state IN ('GA','NJ')
ORDER BY lastname ASC;
 
SELECT customer#,lastname, state FROM customers
WHERE state = 'GA' OR state ='NJ'
ORDER BY lastname ASC;
 
5.
SELECT order#,orderdate FROM orders
where orderdate <= to_date('Apr 1,2009','MM dd, YYYY');
 
SELECT order#,orderdate FROM orders
WHERE NOT orderdate > to_date('Apr 1,2009','MM dd, YYYY');
 
6.
SELECT lname, fname FROM author
WHERE upper(lname) LIKE '%IN%'
ORDER BY lname, fname;
 
7.
SELECT lastname, referred FROM customers
WHERE referred IS NOT NULL;
 
8.
SELECT title, CATEGORY FROM books
WHERE CATEGORY IN ('COOKING','CHILDREN');
 
SELECT title, CATEGORY FROM books
WHERE CATEGORY = 'COOKING' OR CATEGORY = 'CHILDREN';
 
SELECT title, CATEGORY FROM books
WHERE REGEXP_LIKE(category, 'COOKING|CHILDREN','i');
 
9.
SELECT isbn, title FROM books
WHERE title LIKE '_A_N%'
order by title desc;
 
10.
   -- a) range operator
SELECT title, pubdate FROM books
WHERE CATEGORY = 'COMPUTER' 
AND pubdate BETWEEN to_date('Jan 1, 2005','MM dd, YYYY') AND to_date('Dec 31, 2005','MM dd, YYYY');
 
  -- b) logical operator
SELECT title, pubdate FROM books
WHERE CATEGORY = 'COMPUTER'
AND (pubdate >= to_date('Jan 1, 2005','MM dd, YYYY') AND pubdate <= to_date('Dec 31, 2005','MM dd, YYYY'));
 
-- c search pattern
SELECT title, pubdate FROM books
WHERE CATEGORY = 'COMPUTER' AND to_char(pubdate,'YY') = '05';
 
===========================================================================
CHAPTER 8
ADVANCED CHALLENGE
===========================================================================
1
SELECT title , rpad((retail - (COST + nvl(discount,0))),5,'0') Margin FROM books
WHERE (retail - (COST + nvl(discount,0))) >= 10.00
ORDER BY (retail - (COST + nvl(discount,0))) DESC;
 
/***
TITLE                          Margin
------------------------------ -----
PAINLESS CHILD-REARING         37.45
HOLY GRAIL OF ORACLE           24.90
DATABASE IMPLEMENTATION        24.55
BUILDING A CAR WITH TOOTHPICKS 19.15
SHORTEST POEMS                 18.10
E-BUSINESS THE EASY WAY        16.60
HOW TO MANAGE THE MANAGER      16.55
BODYBUILD IN 10 MINUTES A DAY  12.20
HOW TO GET FASTER PIZZA        10.60
 
 9 rows selected 
**/
 
2
SELECT * FROM books
WHERE CATEGORY IN ('COMPUTER','FAMILY LIFE') AND pubid IN (1,3)
AND retail >= 45.00;
 
/**
 
ISBN       TITLE                    PUBDATE   PUBID  COST RETAI DISCO CATEGORY  
---------- -----------------------  --------- ----- ----- ----- ----- -----------
8843172113 DATABASE IMPLEMENTATION  04-JUN-03     3  31.4 55.95       COMPUTER
3957136468 HOLY GRAIL OF ORACLE     31-DEC-05     3 47.25 75.95   3.8 COMPUTER   
 
**/
 
 