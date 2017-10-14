CHAPTER 13
Hands On
=====================================================================
1.
CREATE OR REPLACE VIEW contact
AS SELECT NAME,phone FROM publisher;
2.
CREATE OR REPLACE VIEW contact
AS SELECT NAME,phone FROM publisher
WITH READ ONLY CONSTRAINT read_only_contact_vu;
3.
CREATE OR REPLACE FORCE VIEW homework13
AS SELECT col1, col2 FROM firstcontact;
4.
DESC homework13;
/****
Name Null Type
COL1
UNDEFINED
COL2 UNDEFINED
****/
5.
CREATE OR REPLACE VIEW reorderinfo
AS SELECT b.title,b.isbn,p.contact,p.phone
FROM books b
JOIN publisher p ON p.pubid = b.pubid;
6.
UPDATE reorderinfo
SET contact = 'Samara H' WHERE isbn = 0401140733;
/***
SQL Error: ORA01779:
cannot modify a column which maps to a non keypreserved
table
01779. 00000 "
cannot modify a column which maps to a non keypreserved
table"
*Cause: An attempt was made to insert or update columns of a join view which
map to a nonkeypreserved
table.
*Action: Modify the underlying base tables directly.
*/
It
is nonupdateable
view
7.
UPDATE reorderinfo
SET isbn = 333333423 WHERE isbn = 0401140733;
/***
UPDATE reorderinfo
SET isbn = 333333423 WHERE isbn = 0401140733
Error report SQL
Error: ORA02292:
integrity constraint (SAMARA.ORDERITEMS_ISBN_FK) violated child
record found
02292. 00000 "
integrity constraint (%s.%s) violated child
record found"
*Cause: attempted to delete a parent key value that had a foreign
dependency.
*Action: delete dependencies first then parent or disable constraint.
*/
It
is nonupdateable
view
8.
DELETE FROM reorderinfo
WHERE contact = 'TOMMIE SEYMOUR';
/***
DELETE FROM reorderinfo
WHERE contact = 'TOMMIE SEYMOUR'
Error report SQL
Error: ORA02292:
integrity constraint (SAMARA.ORDERITEMS_ISBN_FK) violated child
record found
02292. 00000 "
integrity constraint (%s.%s) violated child
record found"
*Cause: attempted to delete a parent key value that had a foreign
dependency.
*Action: delete dependencies first then parent or disable constraint.
***/
9.
ROLLBACK;
10.
DROP VIEW reorderinfo;
===========================================================================
CHAPTER 13
ADVANCED CHALLENGE
===========================================================================
WITH src AS(
SELECT isbn,count(order#) freq
, row_number() OVER (ORDER BY count(order#) DESC) rnum
FROM orderitems
GROUP BY isbn
)
SELECT b.*,s.rnum as frequency_rank,to_char(((b.retail cost)/
cost)*100,'99.99')||'%' as profit_margin
FROM books b JOIN src s ON s.isbn = b.isbn
WHERE s.rnum <= 5
ORDER BY s.rnum;
/******
ISBN TITLE PUBDATE PUBID COST RETAIL DISCOUNT CATEGORY FREQUENCY_RANK PROFIT_

3437212490
COOKING WITH MUSHROOMS 28FEB04
4 12.5 19.95 COOKING 1 59.60%
8843172113 DATABASE IMPLEMENTATION 04JUN03
3 31.4 55.95 COMPUTER 2 78.18%
2491748320 PAINLESS CHILDREARING
17JUL04
5 48 89.95 4.5 FAMILY LIFE 3 87.40%
0401140733 REVENGE OF MICKEY 14DEC05
1 14.2 22 FAMILY LIFE 4 54.93%
8117949391 BIG BEAR AND LITTLE DOVE 08NOV05
5 5.32 8.95 CHILDREN 5 68.23%
*******/