#!/bin/sh
set -e
jq --slurp --raw-input '{"text": "\(.)", "gfm": true}' < /data/"$1" | curl -s --header Content-Type:application/json --data @- "${GIT_BASE_URL}/api/v4/markdown" | jq --raw-output '.html' | lynx -stdin -dont_wrap_pre -force_html -underscore -use_mouse
