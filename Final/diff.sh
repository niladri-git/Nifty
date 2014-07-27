#!/bin/bash

echo NA > diff.txt
cat close.txt | awk '{print $3}' | awk 'NR-1{print $0-p}{p=$0}' >> diff.txt

echo "Generated diff.txt"
echo
