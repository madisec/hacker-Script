#!/bin/bash 

tldfinder() {
    # You can use custom tld wordlist or use default woordlist file
    for tld in `cat $2`; do
        echo $1$tld
    done
}