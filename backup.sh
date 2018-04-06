#!/bin/bash

NOW=`date +"%H-%M"`
BEFORE=`date +"%H-%M" -d “5 mins ago"`

SRC=“webengage.txt”
TRG="webengage.txt-$NOW”
LNK="webengage.txt-$BEFORE”

#The rsync options:
OPT="-avh --link-dest=$LNK"

#Execute the backup
rsync $OPT $SRC $TRG
