#!/bin/sh
echo "Running Salesforce Delta Package Creation"
java -cp /app/sfdxlean.jar com.cf.services.RunApexTests \
  -h="$1" \
  -u="$2" \
  -p="$3"