#!/bin/bash

sdns() {
    # Static DNS brute force authentication flow 
    # Before run script, install massdns and shuffledns
    shuffledns -d $1 -w $2 -r $3
    # $1 => domain name
    # $2 => wordlist
    # $3 => resolver. recommended use 4.2.2.4, 8.8.8.8 and 1.1.1.1 
}