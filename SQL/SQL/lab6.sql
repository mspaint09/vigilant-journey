CHAPTER 6
Hands On
=====================================================================
 1.
SQL> CREATE USER smart IDENTIFIED BY oracle;
 
User created.
 
2.
SQL> conn smart/oracle
/** ERROR:
ORA-01045: user SMART lacks CREATE SESSION privilege; logon denied
 
warning: you are NO longer connected TO oracle.
**/
3.
SQL> conn sys/oracle AS SYSDBA
--Connected.
 
SQL> GRANT connect,resource to smart;
 
--GRANT succeeded.
 
4.
SQL> CREATE ROLE customerrep;
--ROLE created.
 
SQL> GRANT INSERT,DELETE ON orders TO customerrep;
--Grant succeeded.
 
SQL> GRANT INSERT,DELETE ON orderitems TO customerrep;
--Grant succeeded.
 
5.
 
SQL> GRANT customerrep TO smart;
 
6.
SQL> conn smart/oracle@pdbmw
-- Connected.
SQL> select grantor, grantee, table_name, owner, privilege from user_tab_privs
  2  ORDER BY 3;
/**
GRANTOR         GRANTEE         TABLE_NAME      OWNER           PRIVILEGE
--------------- --------------- --------------- --------------- ---------------
smart           PUBLIC          smart           sys             inherit PRIVILEGES
sys             smart           orders          sys             INSERT
sys             smart           orders          sys             DELETE
SYS             SMART           ordersitems     SYS             INSERT
SYS             SMART           ordersitems     SYS             DELETE
**/
 
SQL> SELECT * FROM session_privs;
/**
PRIVILEGE
----------------------------------------
CREATE SESSION
CREATE TABLE
CREATE CLUSTER
CREATE SEQUENCE
CREATE PROCEDURE
CREATE TRIGGER
CREATE TYPE
CREATE OPERATOR
CREATE INDEXTYPE
SET CONTAINER
 
10 rows selected.
**/
 
7.
SQL> REVOKE INSERT,DELETE ON orders from customerrep;
--Revoke succeeded.
SQL> REVOKE INSERT,DELETE ON orderitems FROM customerrep;
--Revoke succeeded.
 
8.
SQL> revoke  customerrep from smart;
--Revoke succeeded.
 
9.
SQL> drop role customerrep;
-- Role dropped.
 
10.
SQL> DROP USER smart;
-- User dropped.
 
===========================================================================
CHAPTER 7
ADVANCED CHALLENGE
===========================================================================
 
 
Account Managers
Tables:
   Books, Customer, Order, Promotion and Order_item
Role: account_mgrs
Privileges: Select on Order, select on Order_item, select on Customer, insert on Promotion, Update on Promotion, Delete on Promotion, select on Promotion, select on Books, update on Books
SQL
CREATE ROLE account_mgrs;
GRANT SELECT ON Order TO account_mgrs;
GRANT SELECT ON Order_item TO account_mgrs;
GRANT SELECT ON Customer TO account_mgrs;
GRANT SELECT, UPDATE, INSERT, DELETE ON Promotion TO account_mgrs;
GRANT SELECT, UPDATE ON Books TO account_mgrs;
 
The account_mgrs role will need to view orders relating to customers in order to grant customer specific promotions. 
They will also need to create new or update existing promotions. In certain circumstances, they will need to archive or delete expired 
promotions. For book specific promotions, they may want to view and modify the discount column of the book.
 
Data Entry Clerks
    Table:
        Books, Publishers, Author, Book_author
    Role: data_entry_clerk
   Privileges: Insert on Books, insert on Publishers, insert on Author, insert on Book_author
-- SQL
CREATE ROLE data_entry_clerk;
GRANT INSERT ON Books TO data_entry_clerk;
GRANT INSERT ON Publishers TO data_entry_clerk;
GRANT INSERT ON Author TO data_entry_clerk;
GRANT INSERT ON Book_author TO data_entry_clerk;
 
The data_entry_clerk role will need to be able to add data into the database
 
 
Customer Services Rep
 
    Table:
        Customer, Order, Order_item
    Role: cust_services_rep
   Privileges: Insert on Customer, Update on Customer, Select on Customer, Select on Order, Select on Order_item, Update on Order
-- SQL
CREATE ROLE cust_services_rep;
GRANT INSERT, UPDATE, SELECT ON Customer TO data_entry_clerk;
GRANT INSERT, UPDATE, SELECT ON Order TO data_entry_clerk;
GRANT INSERT, SELECT ON Order_item TO data_entry_clerk;
 
The cust_services_rep role will need to be able to view the data inside the database.
 