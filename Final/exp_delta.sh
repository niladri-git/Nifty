#!/bin/bash

rm exp_delta.txt
paste exp_day.txt exp_diff.txt >> exp_delta.txt

echo "Generated exp_delta.txt"
