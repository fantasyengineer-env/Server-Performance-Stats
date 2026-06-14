#!/bin/bash

echo "--os version--"
hostnamectl
echo "--uptime--" 
uptime -p
echo "--load average--"
nproc
lscpu | grep "^CPU(s)"
echo "--who is logged in--"
w
echo "--failed login attempts--"
sudo lastb
echo "--cpu statistics--"
mpstat 1 5
echo "--memory statistics--"
free -gh
echo "--disk usage--"
df -h
echo "--top 5 processes by cpu usage--"
ps aux --sort=-%cpu | head -n6
echo "--top 5 processes by memory usage--"
ps aux --sort=-%mem | head -n6
