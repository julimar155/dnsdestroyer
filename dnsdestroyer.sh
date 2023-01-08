#!/bin/bash

apt install seclists

for linha in $(cat /usr/share/seclists/Discovery/DNS/subdomains-top1million-110000.txt);
do host $linha.$1 | grep -v "NXDOMAIN";
done
