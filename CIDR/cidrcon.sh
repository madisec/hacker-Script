#!/bin/bash

cidrcon () {
    # Parase Nmap output xml file and extract subdomains or CIDR
    cat $1 | grep '<elem key="value">DNS:' | cut -d ">" -f 2 | cut -d "<" -f 1 | sed 's/, /\n/g' | sed 's/DNS://g'
    #  After run this flow you can use unfurl 
}
