#!/bin/bash
wttr=`curl 'wttr.in/ZhengZhou?format=3&m' -s  |awk -F " " '{print $3"  "$2}'`
printf '{"text":"%s %s"}' $wttr
