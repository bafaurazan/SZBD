# Administracja Systemow Bazodanowych (ASB)

Oracle 21c SQL Database system configuration and testing on Oracle Linux 8 OS.

### File structure
```sh
.
├── db_config
│   ├── listener.ora
│   └── tnsnames.ora
├── Oracle_directories.txt
├── python_scripts
│   ├── csv_count.py
│   ├── cut_dataset.py
│   └── data_cleaning.py
├── shell_scripts
│   ├── start_oracle_env.sh
│   ├── start_pdbs.sh
│   └── stop_pdbs.sh
└── sql_scripts
    ├── nls_parameters.sql
    ├── pdb_common_users.sql
    ├── pdb_containers.sql
    ├── pdb_listener_assign.sql
    ├── pdb_local_users.sql
    ├── pdb_tablespaces.sql
    ├── user_3_data.sql
    └── v_parameters.sql
```

### `db_config`
Files named `listener.ora` and `tnsnames.ora` in this directory should be copied to the ir original Oracle DB directory on linux:
```sh
/opt/oracle/homes/OraDBHome21cXE/network/admin/
```
This path can also be found in `Oracle_directories.txt` file in root directory of `ASB` folder.


### `python_scripts`
These are the files used to process the dataset used to import as a database for `user_3_176768` in the third PDB Container - `PDB_Bazan_3`.
Database imported to `user_3_176768` should contain from 500 000 to 1 000 000 rows, that's why processing of the chosen dataset was necessary.

- `csv_count.py` - Counts all of the rows in given list of CSV files
- `cut_dataset.py` - Cuts given number of rows from provided CSV file
- `data_cleaning.py` - Removes all of the JSON type columns from the chosen dataset


### `shell_scripts`
Files written in bash in order to automate certain Oracle commands.
- `start_oracle_env.sh` - After sourcing your current terminal is in the Oracle environment (needed every time when working on Oracle in Linux Terminal)
- `start_pdbs.sh` - Used to automate starting and opening process of the registered PDB Containers
- `stop_pdbs.sh` - Used to automate stopping and closing process of the registered PDB Containers

### `sql_scripts`
SQL Scripts written in order to complete given tasks that we needed to complete with this Database system.
- `v_parameters.sql` - Used to modify global database parameters
- `nls_parameters.sql` - Sets provided database NLS Parameters in all of the containers
- `pdb_containers.sql` - Creates the Pluggable Database Containers
- `pdb_tablespaces.sql` - Creates a tablespace for each user
- `pdb_common_users.sql` - Creates common users in the database
- `pdb_local_users.sql` - Creates local users in each container
- `pdb_listener_assign.sql` - Script used to verify if the containers have been assigned to listeners and their aliases
- `user_3_data.sql` - Script used to create and import the pre-processed NYT Articles database
