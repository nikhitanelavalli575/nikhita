#!/bin/bash
PASS=0
TOTAL_TESTS=2
SCORE=0

echo "describe keyspaces;" | cqlsh > keyspaces.txt
if(($(grep -io "my_first_keyspace" keyspaces.txt | wc -l)==1)); then PASS=$((PASS+1)); fi;

if(($(grep -io "starting" keyspaces.txt | wc -l)==1)); then PASS=$((PASS+1)); fi;

echo $PASS
SCORE=$((PASS*100 / TOTAL_TESTS))
echo "FS_SCORE:$SCORE%"
