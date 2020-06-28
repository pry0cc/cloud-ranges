#!/bin/bash

while true
do 
    for company in $(bash -c "ls companies/") 
    do 
        rm -rf companies/$company
        proxychains4 -q ./asn
        proxychains4 -q ./asn
        echo "companies/" > index.html && for i in $(bash -c "ls -l companies/ | cut -d ' ' -f 9"); do echo " - $i/ranges.txt" >> index.html; done
        git add .
        git commit -m "Updated $company at $(date +%D-%T) EST"
        git pull
        git push
        sleep 120
    done
    echo "Sleeping for 86400 seconds (24 hours!) See you tomorrow!"
    sleep 3600
done
