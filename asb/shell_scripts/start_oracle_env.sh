#!/bin/bash

export ORACLE_SID=XE
export ORACLE_HOME=/opt/oracle/product/21c/dbhomeXE
export PATH=$ORACLE_HOME/bin:$PATH

sudo systemctl start oracle-xe-21c
