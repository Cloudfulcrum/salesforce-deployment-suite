#!/bin/sh
echo "Running Salesforce Delta Package Creation"
java -cp /app/sfdxlean.jar com.cf.services.PackageCreation \
  -c="$1" \
  -s="$2" \
  -e="$3" \
  -f="$4" \
  -a="$5" \
  -x=package