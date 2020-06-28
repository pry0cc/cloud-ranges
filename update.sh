#!/bin/bash

while true
do 
    for company in $(bash -c "ls companies/") 
    do 
        rm -rf companies/$company
        proxychains4 -q ./asn
        proxychains4 -q ./asn
        echo "all" > index.html && for i in $(bash -c "ls companies/"); do cp companies/$i/ranges.txt companies/$i/index.html; echo "$i" >> index.html; done
        git add .
        git commit -m "Updated $company at $(date +%D-%T) EST"
        git pull
        git push
        sleep 120
    done
    echo "Sleeping for 86400 seconds (24 hours!) See you tomorrow!"
    sleep 360
done
