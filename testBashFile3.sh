#!/bin/bash

# Function to write Suricata rule
write_rule() {
    echo "alert $1 $2 $3 $4 $5 (msg:\"$6\"; sid:$7;)" >> suricata.rules
}

# Example rule parameters
PROTO="tcp"
SRC_IP="any"
SRC_PORT="any"
DST_IP="any"
DST_PORT="23"
MSG="TCP connection attempt"
SID="1000001"

# Write rule to file
write_rule $PROTO $SRC_IP $SRC_PORT $DST_IP $DST_PORT "$MSG" $SID
suricatasc -c reload-rules

