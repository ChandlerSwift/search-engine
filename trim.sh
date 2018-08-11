#!/bin/bash

find ./cache -type f | xargs sed -i 's/<[^>]*>//g'
