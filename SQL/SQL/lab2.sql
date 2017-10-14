CHAPTER 3
Hands On
========================================================
1.
SQL> CREATE TABLE category(CatCode VARCHAR(2),CatDesc VARCHAR2(10));
Table created.
2.
SQL> CREATE TABLE employees(Emp# NUMBER(5),lastname VARCHAR2(35), firstname VARCHAR2(35), job_class
VARCHAR2(4));
Table created.
3.
SQL> ALTER TABLE employees ADD(EmpDate DATE DEFAULT SYSDATE, EndDate DATE);
Table altered.
4.
SQL> ALTER TABLE employees MODIFY(Job_class VARCHAR(2));
Table altered.
5.
SQL> ALTER TABLE employees DROP COLUMN EndDate;
Table altered.
6.
RENAME employees TO JL_EMPS;
Table renamed.
7.
SQL> CREATE TABLE book_pricing AS(SELECT isbn "ID", cost, retail, category FROM books);
Table created.
8.
SQL> ALTER TABLE book_pricing SET UNUSED(category);
Table altered.
SQL> DESC book_pricing;
Name Null? Type
‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐ ‐‐‐‐‐‐‐‐ ‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐
ID VARCHAR2(10)
COST NUMBER(5,2)
RETAIL
9.
SQL> TRUNCATE TABLE book_pricing;
Table truncated.
SQL> SELECT * FROM book_pricing;
no rows selected
10.
SQL> DROP TABLE book_pricing PURGE;
Table dropped.
SQL> DESC book_pricing;
ERROR:
ORA‐04043: object book_pricing does not exist
SQL> DROP TABLE jl_emps;
Table dropped.
SQL> FLASHBACK TABLE jl_emps TO BEFORE DROP;
Flashback complete.
SQL> DESC jl_emps;
Name Null? Type
‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐ ‐‐‐‐‐‐‐‐ ‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐
EMP# NUMBER(5)
LASTNAME VARCHAR2(35)
FIRSTNAME VARCHAR2(35)
JOB_CLASS VARCHAR2(2)
EMPDATE DATE
========================================================
CHAPTER 3
ADVANCED CHALLENGE
========================================================
SQL> ALTER TABLE acctmanager ADD(Comm_id NUMBER(2) DEFAULT 10, Ben_id NUMBER(2));
Table altered.
SQL> CREATE TABLE commrate(Comm_id NUMBER(2), Comm_rank VARCHAR2(15), Rate NUMBER(3,2));
Table created.
SQL> CREATE TABLE benefits(ben_id NUMBER(2),ben_plan CHAR(1), ben_provider NUMBER(3), active CHAR(1)
CONSTRAINT yes_no_ck CHECK (active in ('Y','N')));
Table created.