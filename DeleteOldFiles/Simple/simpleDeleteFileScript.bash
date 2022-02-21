#!/bin/bash

path="/.../backlog/"
timestamp=$(date +%Y%m%d_%H%M%S)    
filename=log_$timestamp.txt    
log=$path$filename
days=7

START_TIME=$(date +%s)

echo "Backup:: Script Start -- $(date +%Y%m%d_%H%M)" >> $log
find "${path}"  -type f -mtime +$days -print -delete >> $log
END_TIME=$(date +%s)
ELAPSED_TIME=$(( $END_TIME - $START_TIME ))

echo "Backup :: Script End -- $(date +%Y%m%d_%H%M)" >> $log
echo "Elapsed Time ::  $(date -d 00:00:$ELAPSED_TIME +%Hh:%Mm:%Ss) "  >> $log
