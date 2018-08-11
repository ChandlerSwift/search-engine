#!/bin/bash
START_URL=https://chandlerswift.com/

wget \ #--append-output=logfile \
     \ #--no-verbose \
     --input-file=file \
     --timestamping \
     --timeout=2 \
     --tries=1 \
     --protocol-directories \
     --directory-prefix=cache \
     --user-agent="Jeff'n'Chandlerbot v0.01" \
     --recursive \
     --level=10 \
     --span-hosts \
     --follow-tags=a \
     --reject '*.js,*.css,*.ico,*.txt,*.gif,*.jpg,*.jpeg,*.png,*.mp3,*.pdf,*.tgz,*.flv,*.avi,*.mpeg,*.iso' \
     $START_URL

     # https://superuser.com/questions/709702/how-to-crawl-using-wget-to-download-only-html-files-ignore-images-css-js
