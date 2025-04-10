#!/usr/bin/fish
set time (date +%R)
printf  '{"text":"%s %s"}' $time
