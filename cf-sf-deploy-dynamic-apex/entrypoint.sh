#!/bin/sh
echo "Running Salesforce Delta Package Creation"
java -cp /app/sfdxlean.jar com.cf.services.RunDeployment \
  -m="$1" \
  -h="$2" \
  -u="$3" \
  -p="$4" \
  -a="$5" \
  -t="$6" \
  -v="$7"