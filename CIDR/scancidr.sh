#!/bin/bash
scancidr () {
    # $1 for CIDR and $2 for save result to XML file
    sudo nmap -sS -Pn $1 -p 21,22,23,25,53,80,110,161,389,443,445,587,636,995,1025,1701,1723,2000,2483,2484,2601,3001,3128,3306,3389,3690,5060,5900,8000,8080,10443,9001 --script ssl-cert -oX $2
}