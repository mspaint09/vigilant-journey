SET ECHO OFF
/* Script to build the Red Box Video Application. 
*/
PROMPT Running script to create tables etc..

DROP TABLE rental CASCADE CONSTRAINTS;
DROP TABLE reservation CASCADE CONSTRAINTS;
DROP TABLE title_copy CASCADE CONSTRAINTS;
DROP TABLE title CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;

PROMPT Please wait while tables are created....

CREATE TABLE MEMBER
  (member_id  NUMBER (10)        CONSTRAINT member_id_pk PRIMARY KEY
 , last_name  VARCHAR2(25) 
    CONSTRAINT member_last_nn NOT NULL
 , first_name VARCHAR2(25)
 , address    VARCHAR2(100)
 , city       VARCHAR2(30)
 , phone      VARCHAR2(25)
 , join_date  DATE DEFAULT SYSDATE 
    CONSTRAINT join_date_nn NOT NULL)
/

CREATE TABLE TITLE
  (title_id   NUMBER(10)
     CONSTRAINT title_id_pk PRIMARY KEY
 , title      VARCHAR2(60)
     CONSTRAINT title_nn NOT NULL
 , description VARCHAR2(400) 
     CONSTRAINT title_desc_nn NOT NULL
 , rating      VARCHAR2(4)  
     CONSTRAINT title_rating_ck CHECK (rating IN ('G','PG','R','NC17','NR'))
 , category     VARCHAR2(20) DEFAULT 'DRAMA'   
     CONSTRAINT title_categ_ck CHECK (category IN ('DRAMA','COMEDY','ACTION', 'CHILD','SCIFI','DOCUMENTARY'))
 , release_date DATE)
/

CREATE TABLE TITLE_COPY
  (copy_id   NUMBER(10)
 , title_id  NUMBER(10) 
    CONSTRAINT copy_title_id_fk 
       REFERENCES title(title_id)
 , status    VARCHAR2(15) 
     CONSTRAINT copy_status_nn NOT NULL 
     CONSTRAINT copy_status_ck CHECK (status IN ('AVAILABLE', 'DESTROYED', 
						 'RENTED', 'RESERVED'))
 , CONSTRAINT copy_title_id_pk  PRIMARY KEY(copy_id, title_id))
/

CREATE TABLE RENTAL
  (book_date DATE DEFAULT SYSDATE
 , copy_id   NUMBER(10)
 , member_id NUMBER(10) 
    CONSTRAINT rental_mbr_id_fk REFERENCES member(member_id)
 , title_id  NUMBER(10)
 , act_ret_date DATE
 , exp_ret_date DATE DEFAULT SYSDATE+2
 , CONSTRAINT rental_copy_title_id_fk FOREIGN KEY (copy_id, title_id)  
              REFERENCES title_copy(copy_id,title_id)
 , CONSTRAINT rental_id_pk PRIMARY KEY(book_date, copy_id, title_id, member_id))
/

CREATE TABLE RESERVATION
  (res_date  DATE
 , member_id NUMBER(10)
 , title_id  NUMBER(10)
 , CONSTRAINT res_id_pk PRIMARY KEY(res_date, member_id, title_id))
/

PROMPT Tables created.

DROP SEQUENCE title_id_seq;
DROP SEQUENCE member_id_seq;

PROMPT Creating Sequences...

CREATE SEQUENCE member_id_seq 
  START WITH 101 
  NOCACHE
/

CREATE SEQUENCE title_id_seq 
  START WITH 92 
  NOCACHE
/

PROMPT Sequences created.

PROMPT Populate the above tables.


INSERT INTO member 
  VALUES  (member_id_seq.NEXTVAL, 'Velasquez', 'Carmen', '283 King Street', 'Seattle', '587-99-6666', '03-MAR-90'); 
INSERT INTO member
  VALUES   (member_id_seq.NEXTVAL, 'Ngao', 'LaDoris', '5 Modrany',  'Bratislava', '586-355-8882', '08-MAR-90');
INSERT INTO member 
  VALUES  (member_id_seq.NEXTVAL,'Nagayama', 'Midori', '68 Via Centrale', 'Sao Paolo', '254-852-5764', '17-JUN-91');     
INSERT INTO member 
  VALUES  (member_id_seq.NEXTVAL,'Quick-To-See','Mark', '6921 King Way', 'Lagos', '63-559-777', '07-APR-90');
INSERT INTO member
   VALUES  (member_id_seq.NEXTVAL, 'Ropeburn', 'Audry', '86 Chu Street',  'Hong Kong', '41-559-87', '04-MAR-90');   
INSERT INTO member 
  VALUES (member_id_seq.NEXTVAL, 'Urguhart', 'Molly', '3035 Laurier Blvd.',  'Quebec', '418-542-9988','18-JAN-91');
INSERT INTO member 
  VALUES (member_id_seq.NEXTVAL, 'Menchu', 'Roberta', 'Boulevard de Waterloo 41', 'Brussels', '322-504-2228', '14-MAY-90');   
INSERT INTO member
  VALUES (member_id_seq.NEXTVAL, 'Biri', 'Ben', '398 High St.', 'Columbus', '614-455-9863', '07-APR-90');                       
INSERT INTO member 
  VALUES (member_id_seq.NEXTVAL, 'Catchpole', 'Antoinette', '88 Alfred St.', 'Brisbane', '616-399-1411', '09-FEB-92');  

COMMIT;

    
INSERT INTO TITLE (title_id, title, description, rating, category, release_date)
  VALUES (TITLE_ID_SEQ.NEXTVAL, 'Willie and Christmas Too',
   'All of Willie''s friends made a Christmas list for Santa, but Willie has yet to create his own wish list.', 'G', 'CHILD', '05-OCT-95');
INSERT INTO TITLE (title_id, title, description, rating, category, release_date)
  VALUES (TITLE_ID_SEQ.NEXTVAL, 'Alien Again', 'Another installment of science fiction history. Can the heroine save the planet from the alien life form?', 'R', 'SCIFI',             '19-MAY-95');
INSERT INTO TITLE (title_id, title, description, rating, category, release_date)
  VALUES (TITLE_ID_SEQ.NEXTVAL, 'The Glob', 'A meteor crashes near a small American town and unleashes carivorous goo in this classic.', 'NR', 'SCIFI', '12-AUG-95');
INSERT INTO TITLE (title_id, title, description, rating, category, release_date)
  VALUES (TITLE_ID_SEQ.NEXTVAL, 'My Day Off', 'With a little luck and a lot of ingenuity, a teenager skips school for a day in New York.', 'PG', 'COMEDY', '12-JUL-95');
INSERT INTO TITLE (title_id, title, description, rating, category, release_date)
  VALUES (TITLE_ID_SEQ.NEXTVAL, 'Miracles on Ice', 'A six-year-old has doubts about Santa Claus. But she discovers that miracles really do exist.', 'PG', 'DRAMA', '12-SEP-95');
INSERT INTO TITLE (title_id, title, description, rating, category, release_date)
  VALUES (TITLE_ID_SEQ.NEXTVAL,  'Soda Gang', 'After discovering a cached of drugs, a young couple find themselves pitted against a vicious gang.', 'NR', 'ACTION', '01-JUN-95');
INSERT INTO title (title_id, title, description, rating, category, release_date)
  VALUES (TITLE_ID_SEQ.NEXTVAL, 'Interstellar Wars', 'Futuristic interstellar action movie. Can the rebels save the humans from the evil Empire?', 'PG', 'SCIFI','07-JUL-77');

COMMIT;

INSERT INTO title_copy VALUES (1,92, 'AVAILABLE');
INSERT INTO title_copy VALUES (1,93, 'AVAILABLE');
INSERT INTO title_copy VALUES (2,93, 'RENTED'); 
INSERT INTO title_copy VALUES (1,94, 'AVAILABLE');
INSERT INTO title_copy VALUES (1,95, 'AVAILABLE');
INSERT INTO title_copy VALUES (2,95, 'AVAILABLE');
INSERT INTO title_copy VALUES (3,95, 'RENTED');
INSERT INTO title_copy VALUES (1,96, 'AVAILABLE'); 
INSERT INTO title_copy VALUES (1,97, 'AVAILABLE');
INSERT INTO title_copy VALUES (1,98, 'RENTED');
INSERT INTO title_copy VALUES (2,98, 'AVAILABLE'); 

COMMIT;

INSERT INTO reservation VALUES (sysdate-1, 101, 93);
INSERT INTO reservation VALUES (sysdate-2, 106, 102);

COMMIT;

INSERT INTO rental VALUES (sysdate-1, 2, 101, 93, null, sysdate+1);
INSERT INTO rental VALUES (sysdate-2, 3, 102, 95, null, sysdate);
INSERT INTO rental VALUES (sysdate-3, 1, 101, 98, null, sysdate-1);
INSERT INTO rental VALUES (sysdate-4, 1, 106, 97, sysdate-2, sysdate-2);
INSERT INTO rental VALUES (sysdate-3, 1, 101, 92, sysdate-2, sysdate-1);

COMMIT;

PROMPT ** Tables built and data loaded **

/*
SQL> select count(*) member from member;

    MEMBER
----------
         9

SQL> select count(*) rental from rental;

    RENTAL
----------
         5

SQL> select count(*) reservation from reservation;

RESERVATION
-----------
          2

SQL> select count(*) title from title;

     TITLE
----------
         7

SQL> select count(*) title_copy from title_copy;

TITLE_COPY
----------
        11

SQL>
*/
