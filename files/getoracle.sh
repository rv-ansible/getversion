#!/bin/bash

PATH=$PATH:$ORACLE_HOME/bin 
export PATH
sqlplus /NOLOG < /dev/null | grep Release | cut -d ' ' -f3