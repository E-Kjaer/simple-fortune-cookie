#!/bin/bash

frontend="localhost:8080" 
backend="localhost:9000" 

frontend_keyword="<!DOCTYPE html>" # enter the keyword for test content
backend_keyword="[]"

if curl -s "$frontend" | grep "$frontend_keyword"
then
    # if the keyword is in the content
    echo "The frontend is working"
    if curl -s "$backend" == "$frontend_keyword"
    then
        echo "Everything works"
        exit 0
    else
        echo "Error - backend is wrong"
        exit 1
    fi
else
    echo "Error - frontend is wrong"
    exit 1
fi