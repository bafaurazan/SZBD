/*
    This script creates a new SQL database user and assigns necessary privileges for database development and testing.
    
    Designed for use with Oracle SQL-compliant database systems.
*/


CREATE USER c##lolipop IDENTIFIED BY password DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp QUOTA UNLIMITED ON users;
GRANT CONNECT TO c##lolipop;
GRANT RESOURCE TO c##lolipop;
GRANT CREATE SESSION TO c##lolipop;
GRANT CREATE TABLE TO c##lolipop;
GRANT CREATE VIEW TO c##lolipop;
GRANT CREATE PROCEDURE TO c##lolipop;
GRANT CREATE SEQUENCE TO c##lolipop;
GRANT CREATE SYNONYM TO c##lolipop;
GRANT CREATE TRIGGER TO c##lolipop;
ALTER USER c##lolipop QUOTA UNLIMITED ON users;
ALTER USER c##lolipop ACCOUNT UNLOCK;


--DROP USER c##lolipop CASCADE;