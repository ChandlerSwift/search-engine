#!/bin/bash
if [[ $# -ne 1 ]]; then
	echo "Usage: $0 'search string'"
	exit
fi

grep -R $1 cache | cut -d: -f1 | uniq -c | sort -rh | awk '{ print $2}' | sed 's/cache\/https/https\:\//g' | sed 's/cache\/http/http\:\//g ' | head -n 10
