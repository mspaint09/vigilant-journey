=====================================================================
CHAPTER 10
Hands On
=====================================================================
1.
SELECT * FROM customers
WHERE lastname = initcap(lastname) AND firstname = initcap(firstname);
2.
SELECT customer#, CASE WHEN referred IS NULL THEN 'NOT REFERRED' ELSE 'REFERRED' END AS referred
FROM customers;
3.
SELECT b.title, TO_CHAR(SUM(oi.paideach b.
cost),'$99999.99') profit
FROM orders o
JOIN orderitems oi ON o.order# = oi.order#
JOIN books b ON oi.isbn = b.isbn
WHERE o.order# = 1002
GROUP BY b.title;
4.
SELECT title, ROUND((((retail COST)/
cost)*100),0)||'%' Markup
FROM books;
5.
SELECT TO_CHAR(SYSDATE,'DY HH24:MI:SS') FROM dual;
6.
SELECT title, LPAD(cost,12,'*') FROM books;
7
SELECT DISTINCT LENGTH(isbn) FROM books;
8.
SELECT title, pubdate, SYSDATE, round(months_between(SYSDATE,pubdate),0) age
FROM books;
9.
SELECT next_day(SYSDATE,'WEDNESDAY') "NEXT WEDNESDAY"
FROM dual;
10.
SELECT customer#,zip,substr(zip,3,2) third_digit,instr(zip,'3',1) first_three_occur
FROM customers;
===========================================================================
CHAPTER 10
ADVANCED CHALLENGE
===========================================================================
SELECT title, CATEGORY, to_char(round(retail,2),'$99.99') "Current Price", to_char(round(retail * CASE CATEGORY WHEN 'COMPUTER' THEN 0.10
WHEN 'FITNESS' THEN 0.15
WHEN 'SELF HELP' THEN 0.25 ELSE 0.03 END,2) + retail,'$00.99') as "Revised Price"
FROM books b;
/****
TITLE CATEGORY Current Revised
BODYBUILD
IN 10 MINUTES A DAY FITNESS $30.95 $35.59
REVENGE OF MICKEY FAMILY LIFE $22.00 $22.66
BUILDING A CAR WITH TOOTHPICKS CHILDREN $59.95 $61.75
DATABASE IMPLEMENTATION COMPUTER $55.95 $61.55
COOKING WITH MUSHROOMS COOKING $19.95 $20.55
HOLY GRAIL OF ORACLE COMPUTER $75.95 $83.55
HANDCRANKED COMPUTERS COMPUTER $25.00 $27.50
EBUSINESS
THE EASY WAY COMPUTER $54.50 $59.95
PAINLESS CHILDREARING
FAMILY LIFE $89.95 $92.65
THE WOK WAY TO COOK COOKING $28.75 $29.61
BIG BEAR AND LITTLE DOVE CHILDREN $8.95 $09.22
TITLE CATEGORY Current Revised
HOW
TO GET FASTER PIZZA SELF HELP $29.95 $37.44
HOW TO MANAGE THE MANAGER BUSINESS $31.95 $32.91
SHORTEST POEMS LITERATURE $39.95 $41.15
14 rows selected
***/
