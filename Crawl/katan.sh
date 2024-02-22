#!/bin/bash

katan() {
    host=$(echo $1 | unfurl format %d)
    echo $i | katana -d 4 -jc -jsl -ct -hl -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" -silent | grep -Eiv "\.(css|jpg|jpeg|png|svg|img|gif|mp4|flv|ogv|webm|webp|mov|mp3|m4p|ppt|pptx|scss|tif|tiff|ttf|otf|woff|woff2|bmp|ico|eot|htc|swf|rtf|image)" | grep $host | sort -u
}