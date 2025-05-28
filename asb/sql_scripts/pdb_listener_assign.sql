-- Verify correct configuration of listeners and aliases for assigned PDBs
-- This script is intended to be executed after defining PDB entries in `listener.ora` and `tnsnames.ora`.


-- Execute after assigning PDBs in listener.ora and tnsnames.ora
ALTER PLUGGABLE DATABASE PDB_Piasek_1 OPEN;
ALTER PLUGGABLE DATABASE PDB_Piasek_1 CLOSE IMMEDIATE;
ALTER PLUGGABLE DATABASE PDB_Piasek_2 OPEN;
ALTER PLUGGABLE DATABASE PDB_Piasek_2 CLOSE IMMEDIATE;
ALTER PLUGGABLE DATABASE PDB_Bazan_3 OPEN;
ALTER PLUGGABLE DATABASE PDB_Bazan_3 CLOSE IMMEDIATE;


-- List all PDBs and their open status
SELECT NAME, OPEN_MODE FROM V$PDBS;


-- Display all services registered to PDBs to verify listener assignments
SELECT NAME, PDB FROM DBA_SERVICES WHERE PDB IS NOT NULL;

