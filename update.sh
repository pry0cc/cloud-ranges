#!/bin/bash

while true; do for company in $(bash -c "ls companies/"); do rm -rf companies/$company; proxychains -q ./asn; proxychains -q ./asn; git add .; git commit -m "Updated $company at $(date +%D-%T) EST"; git push; sleep 120; done; done