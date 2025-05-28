#!/bin/bash

# Stop all Oracle containers

lsnrctl stop listener_1_169828
lsnrctl stop listener_2_169828
lsnrctl stop listener_3_176768

sqlplus / as sysdba <<EOF
ALTER PLUGGABLE DATABASE PDB_Piasek_1 CLOSE IMMEDIATE;
ALTER PLUGGABLE DATABASE PDB_Piasek_2 CLOSE IMMEDIATE;
ALTER PLUGGABLE DATABASE PDB_Bazan_3 CLOSE IMMEDIATE;

EXIT;
EOF
