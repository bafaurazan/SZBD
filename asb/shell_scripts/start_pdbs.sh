#!/bin/bash

# Start all Oracle containers


lsnrctl start listener_1_169828
lsnrctl start listener_2_169828
lsnrctl start listener_3_176768

sqlplus / as sysdba <<EOF
ALTER PLUGGABLE DATABASE PDB_Piasek_1 OPEN;
ALTER PLUGGABLE DATABASE PDB_Piasek_2 OPEN;
ALTER PLUGGABLE DATABASE PDB_Bazan_3 OPEN;

EXIT;
EOF

