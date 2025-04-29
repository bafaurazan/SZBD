-- Create 3 containers inside CDB$TOOR, PDB_Piasek_1, PDB_Piasek_2, PDB_Bazan_3
-- Each container has set a different language (PL, EN, USA)

alter session set "_ORACLE_SCRIPT"=true;



-- Print the current container name and it's ID number
SHOW CON_NAME;
SHOW CON_ID;



-- Print info about the currently available containers in the database
SELECT NAME, CON_ID, DBID, CON_UID, GUID FROM V$CONTAINERS ORDER BY CON_ID;
SELECT PDB_ID, PDB_NAME, STATUS FROM DBA_PDBS ORDER BY PDB_ID;
show pdbs;



-- Create the containers

ALTER SESSION SET CONTAINER=CDB$ROOT;

-- PDB_Piasek_1
CREATE PLUGGABLE DATABASE PDB_Piasek_1
ADMIN USER admin_pdb_piasek_1 IDENTIFIED BY haslo
FILE_NAME_CONVERT = (
  '/opt/oracle/oradata/XE/pdbseed/', 
  '/opt/oracle/oradata/XE/pdb_piasek_1/'
);

-- Open the container with the start of the database
ALTER PLUGGABLE DATABASE PDB_Piasek_1 SAVE STATE;

-- PDB_Piasek_2
CREATE PLUGGABLE DATABASE PDB_Piasek_2
ADMIN USER admin_pdb_piasek_2 IDENTIFIED BY haslo
FILE_NAME_CONVERT = (
  '/opt/oracle/oradata/XE/pdbseed/', 
  '/opt/oracle/oradata/XE/pdb_piasek_2/'
);

-- Open the container with the start of the database
ALTER PLUGGABLE DATABASE PDB_Piasek_2 SAVE STATE;


-- PDB_Bazan_3
CREATE PLUGGABLE DATABASE PDB_Bazan_3
ADMIN USER admin_pdb_bazan_3 IDENTIFIED BY haslo
FILE_NAME_CONVERT = (
  '/opt/oracle/oradata/XE/pdbseed/', 
  '/opt/oracle/oradata/XE/pdb_bazan_3/'
);

-- Open the container with the start of the database
ALTER PLUGGABLE DATABASE PDB_Bazan_3 SAVE STATE;



-- Setting up languages in the containers

-- PDB_Piasek_1
ALTER SYSTEM SET NLS_LANGUAGE = 'POLISH' SCOPE = SPFILE;
ALTER SYSTEM SET NLS_TERRITORY = 'POLAND' SCOPE = SPFILE;

-- PDB_Piasek_2
ALTER SYSTEM SET NLS_LANGUAGE = 'ENGLISH' SCOPE = SPFILE;
ALTER SYSTEM SET NLS_TERRITORY = 'UNITED KINGDOM' SCOPE = SPFILE;


-- PDB_Bazan_3
ALTER SYSTEM SET NLS_LANGUAGE = 'ENGLISH' SCOPE = SPFILE;
ALTER SYSTEM SET NLS_TERRITORY = 'AMERICA' SCOPE = SPFILE;

-- PDB and CDB or the whole Oracle instance need to be restarted for this to take place
-- SHUTDOWN IMMEDIATE;
-- STARTUP;

-- Checking if the changes took place in the containers individually
-- SELECT * 
-- FROM NLS_DATABASE_PARAMETERS
-- WHERE PARAMETER IN ('NLS_LANGUAGE', 'NLS_TERRITORY');

-- TODO: SPRAWDZIC ZMIENIONE PARAMETRY + LOGIN W SQLPLUS NA KONTENERY


-- DROP PLUGGABLE DATABASE PDB_Piasek_1 INCLUDING DATAFILES;
-- DROP PLUGGABLE DATABASE PDB_Piasek_2 INCLUDING DATAFILES;
-- DROP PLUGGABLE DATABASE PDB_Bazan_3 INCLUDING DATAFILES;

