#!/bin/bash

wayback() {
    host=$(echo $1 | unfurl format %d)
    echo $1 | waybackurls | grep `echo $1 | unfurl format %S.%r.%t` | grep -Eiv "\.(css|jpg|jpeg|png|svg|img|gif|mp4|flv|ogv|webm|webp|mov|mp3|m4p|ppt|pptx|scss|tif|tiff|ttf|otf|woff|woff2|bmp|ico|eot|htc|swf|rtf|image)" | grep $host | srt -u 
}