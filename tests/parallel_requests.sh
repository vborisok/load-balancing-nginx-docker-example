#!/bin/bash

function call_app() {
  curl -s -X GET --location "http://localhost:8080/" \
       -H "Accept: application/json";
}

function loop_calls() {
  rm -rf responses.json
  for i in {1..1};
  do
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json) &
    $(call_app >> responses.json);
  done
}

loop_calls
wait
echo "App1 calls: $(cat responses.json | grep -c 1)"
echo "App2 calls: $(cat responses.json | grep -c 2)"
echo "App3 calls: $(cat responses.json | grep -c 3)"