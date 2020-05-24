#!/bin/bash

LAST_EVENT=
LAST_EVENT_TIME=0
while read line
do
  DEL="##T"
  EVENT_TIME=$(echo "$line" | awk -v delimeter="$DEL" '{split($0,a,delimeter)} END{print a[2]}')
  EVENT=$(echo "$line" | awk -v delimeter="$DEL" '{split($0,a,delimeter)} END{print a[1]}')
  TIME_DIFF=$(( $EVENT_TIME - $LAST_EVENT_TIME))
  if [[ "$EVENT" == "$LAST_EVENT" ]]; then
     if [[ $TIME_DIFF -gt 2 ]]; then
        echo "rolou commit aqui: "
	git add . && git commit -m 'auto commit' && git push origin master
     else
        echo "Skipping this event as it happend within 2 seconds. TimeDiff=$TIME_DIFF"
     fi
  else
    echo $EVENT
    LAST_EVENT_TIME=$EVENT_TIME
  fi
  LAST_EVENT=$EVENT
done < "${1:-/dev/stdin}"
