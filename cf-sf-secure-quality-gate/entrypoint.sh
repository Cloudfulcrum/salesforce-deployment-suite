#!/bin/sh
echo "Running Salesforce Code Analyzer"
sf scanner:run --format csv --target './**/*.cls' --category "Design,Best Practices,Performance" --outfile ${{ github.workspace }}/dist/'ScanResults.csv'