#!/bin/bash

ddns() {
    subf=`subfinder -d $1 -all -silent`
    echo "$subf" | alterx -silent | anew -q $2 
    echo "$subf" | dnsgen - | anew -q $2
    shuffledns -l $2 -r $3 -silent | anew dnsbrute.txt
}