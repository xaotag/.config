#!/usr/bin/fish
set  allnumber (ls Mail/*/*/new | grep -Eo "[0-9]{5}.*" | wc -l)
printf '{"text":"%s %s"}' $allnumber
