CHAPTER 5
Hands On
=====================================================================

1.
SQL> INSERT INTO orders (order#, customer#, orderdate)
  2  VALUES (1021,1009, to_date('20-jul-2009','dd-mon-yyyy'));

1 row created.

2.
SQL> UPDATE orders
  2  SET shipzip = '33222'
  3  WHERE order# = 1017;

1 row updated.

3.
SQL> COMMIT;

Commit complete.

4.
SQL> INSERT INTO orders (order#, customer#, orderdate)
  2  VALUES (1022,2000, to_date('06-aug-2009','dd-mon-yyyy'));
INSERT INTO orders (order#, customer#, orderdate)
*
ERROR at line 1:
ORA-02291: integrity constraint (SCOTT.ORDERS_CUSTOMER#_FK) violated - parent key not found

/** An attempt was made to place an order for a nonexistent customer - customer id 2000 does not exist in the customers table **/

5.
SQL> INSERT INTO orders (order#, customer#)
  2  VALUES (1023,1009);
INSERT INTO orders (order#, customer#)
*
ERROR at line 1:
ORA-01400: cannot insert NULL into ("SCOTT"."ORDERS"."ORDERDATE")

/** a not null constraint is violated, the dates cannot be null they are a required fill for every new order **/

6.
SQL> SAVEPOINT num7;

Savepoint created.

SQL> UPDATE books
  2  SET COST = '&cost'
  3  WHERE isbn = '&isbn';

7.
SQL> UPDATE books
  2  SET COST = '&cost'
  3  WHERE isbn = '&isbn';
Enter value for cost: 20.00
old   2: SET COST = '&cost'
new   2: SET COST = '20.00'
Enter value for isbn: 1059831198
old   3: WHERE isbn = '&isbn'
new   3: WHERE isbn = '1059831198'

1 row updated.

8.
SQL> ROLLBACK;

Rollback complete.

9.
SQL> DELETE FROM orderitems WHERE order# = 1005;

1 row deleted.

SQL> DELETE FROM orders WHERE order# = 1005; 

1 row deleted.

10.
SQL> ROLLBACK;

Rollback complete.


===========================================================================
CHAPTER 5
ADVANCED CHALLENGE
===========================================================================
---------------------------------------------------------
/home/oracle/Desktop/Advanced_Challenge_CH5.sql 

CREATE TABLE CATEGORY(
      catcode VARCHAR2(3) CONSTRAINT pk_catcode PRIMARY KEY
   ,  catdesc  VARCHAR2(11) NOT NULL
);


INSERT INTO CATEGORY(catcode, catdesc)
VALUES('BUS','BUSINESS');


INSERT INTO CATEGORY(catcode, catdesc)
VALUES('CHN','CHILDREN');


INSERT INTO CATEGORY(catcode, catdesc)
VALUES('COK','COOKING');


INSERT INTO CATEGORY(catcode, catdesc)
VALUES('COM','COMPUTER');


INSERT INTO CATEGORY(catcode, catdesc)
VALUES('FAL','FAMILY LIFE');


INSERT INTO CATEGORY(catcode, catdesc)
VALUES('FIT','FITNESS');


INSERT INTO CATEGORY(catcode, catdesc)
VALUES('SEH','SELF HELP');


INSERT INTO CATEGORY(catcode, catdesc)
VALUES('LIT','LITERATURE');


COMMIT;
---------------------------------------------------------

SQL> @/home/oracle/Desktop/Advanced_Challenge_CH5.sql  

Table created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


Commit complete.
---------------------------------------------
/home/oracle/Desktop/Advanced_Challenge_CH5_2.sql

ALTER TABLE books ADD(catcode VARCHAR2(3) CONSTRAINT fk_to_category REFERENCES CATEGORY);


UPDATE books b
SET catcode = (SELECT catcode FROM CATEGORY c WHERE c.catcode = upper(b.CATEGORY));


SELECT * FROM books;


ALTER TABLE books DROP column CATEGORY;
---------------------------------------------

SQL> @/home/oracle/Desktop/Advanced_Challenge_CH5_2.sql

Table altered.


14 rows updated.


ISBN	   TITLE			  PUBDATE	 PUBID	     COST     RETAIL   DISCOUNT CAT
---------- ------------------------------ --------- ---------- ---------- ---------- ---------- ---
CAT
---
1059831198 BODYBUILD IN 10 MINUTES A DAY  21-JAN-05	     4	    18.75      30.95


0401140733 REVENGE OF MICKEY		  14-DEC-05	     1	     14.2	  22


4981341710 BUILDING A CAR WITH TOOTHPICKS 18-MAR-06	     2	     37.8      59.95	      3


8843172113 DATABASE IMPLEMENTATION	  04-JUN-03	     3	     31.4      55.95


3437212490 COOKING WITH MUSHROOMS	  28-FEB-04	     4	     12.5      19.95


3957136468 HOLY GRAIL OF ORACLE 	  31-DEC-05	     3	    47.25      75.95	    3.8


1915762492 HANDCRANKED COMPUTERS	  21-JAN-05	     3	     21.8	  25


9959789321 E-BUSINESS THE EASY WAY	  01-MAR-06	     2	     37.9	54.5


2491748320 PAINLESS CHILD-REARING	  17-JUL-04	     5	       48      89.95	    4.5


0299282519 THE WOK WAY TO COOK		  11-SEP-04	     4	       19      28.75


8117949391 BIG BEAR AND LITTLE DOVE	  08-NOV-05	     5	     5.32	8.95


0132149871 HOW TO GET FASTER PIZZA	  11-NOV-06	     4	    17.85      29.95	    1.5


9247381001 HOW TO MANAGE THE MANAGER	  09-MAY-03	     1	     15.4      31.95


2147428890 SHORTEST POEMS		  01-MAY-05	     5	    21.85      39.95



14 rows selected.


Table altered.

