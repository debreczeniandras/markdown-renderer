#!/bin/sh
set -e
jq --slurp --raw-input '{"text": "\(.)", "gfm": true}' < /data/"$1" | curl --header Content-Type:application/json --data @- "https://git.fanactivator.com/api/v4/markdown" | jq --raw-output '.html' | lynx -stdin -dont_wrap_pre -force_html -underscore -use_mouse
