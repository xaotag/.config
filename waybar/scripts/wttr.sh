#!/bin/bash
wttr=`curl 'wttr.in/ZhenZhou?format=3&m' -s  |awk -F " " '{print $3"  "$2}'`
if [[ -n $wttr ]]; then
	printf '{"text":"%s %s"}' $wttr
fi 
