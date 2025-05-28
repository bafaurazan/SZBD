-- Create common users inside CDB$ROOT, propagated to all PDB containers
-- Common users: C##wspolny_1_169828, C##wspolny_2_176768
-- Each user has CONNECT, RESOURCE, CREATE VIEW and CREATE PROCEDURE privileges
-- Usernames must start with 'C##' according to Oracle naming rules

-- Connect to root container
ALTER SESSION SET CONTAINER = CDB$ROOT;

-- C##wspolny_1_169828
CREATE USER C##wspolny_1_169828 IDENTIFIED BY haslo;

GRANT CREATE SESSION TO c##wspolny_1_169828 CONTAINER=ALL;
GRANT CONNECT, RESOURCE TO C##wspolny_1_169828 CONTAINER=ALL;
GRANT CREATE VIEW, CREATE PROCEDURE TO C##wspolny_1_169828 CONTAINER=ALL;

-- C##wspolny_2_index
CREATE USER C##wspolny_2_176768 IDENTIFIED BY haslo;

GRANT CREATE SESSION TO c##wspolny_2_176768 CONTAINER=ALL;
GRANT CONNECT, RESOURCE TO C##wspolny_2_176768;
GRANT CREATE VIEW, CREATE PROCEDURE TO C##wspolny_2_176768;



-- Check common users' existence and status from root
SELECT USERNAME, COMMON, ACCOUNT_STATUS FROM CDB_USERS
WHERE USERNAME IN ('C##WSPOLNY_1_169828', 'C##WSPOLNY_2_176768');



-- In case of launching the script again, remove all the created common users

-- ALTER SESSION SET CONTAINER = CDB$ROOT;
-- DROP USER C##wspolny_1_169828 CASCADE;
-- DROP USER C##wspolny_2_176768 CASCADE;

