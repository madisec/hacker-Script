#!/bin/bash

gspider() {
    # Input should be URL 
    host=$(echo $1 | unfurl format %d)
    gospider --site $1 --other-source --include-other-source --depth 4 --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" --quiet --robots --sitemap --json | grep -v '\[url\]' | jq -r ".output" | grep -Eiv "\.(css|jpg|jpeg|png|svg|img|gif|mp4|flv|ogv|webm|webp|mov|mp3|m4p|ppt|pptx|scss|tif|tiff|ttf|otf|woff|woff2|bmp|ico|eot|htc|swf|rtf|image)" | grep $host | sort -u
}