#!/bin/bash

dbus-monitor |
while read line;
do
    echo $line | grep 'Discord crashed' && Discord &
done
