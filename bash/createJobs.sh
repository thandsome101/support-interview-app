#!/bin/bash

ADMIN_TOKEN=$1

if [[ -z "${ADMIN_TOKEN}" ]]; then
    echo "[ERROR]: Please add an admin API Token"
else
    curl -s -XPOST 'http://localhost:8080/createItem?name=Milestone4' --data-binary @milestone-4.xml -H "Content-Type:text/xml" --user admin:$ADMIN_TOKEN
    #curl -s -XPOST 'http://localhost:8080/createItem?name=Milestone5' --data-binary @milestone-5.xml -H "Content-Type:text/xml" --user admin:$ADMIN_TOKEN
fi