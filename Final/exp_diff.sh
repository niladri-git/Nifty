#!/bin/bash

echo NA > exp_diff.txt
cat exp_day.txt | awk '{print $3}' | awk 'NR-1{print $0-p}{p=$0}' >> exp_diff.txt

echo "Generated exp_diff.txt"
echo
