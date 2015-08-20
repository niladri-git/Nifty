#!/bin/bash

file=NIFTY_01-01-2014-21-12-2014.txt

#@ Downloaded the csv file from 
## http://www.nseindia.com/products/content/equities/indices/historical_index_data.htm 
## Open the file in notepad++ and save as NIFTY...txt
## Update the filename below
## Replace $prev_cls val in trend.pl
## Replace months value in closing.sh and trend.pl
## Run find_trend.sh 
## sh find_trend.sh > Trend_May_2015.txt

#file=NIFTY_01-07-2015-31-07-2015.txt
file=NIFTY_01-08-2015-20-08-2015.txt

months=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)

## Current month

# months=(May)
months=(Aug)

echo
echo "Removing old data..."
rm closing_*.txt

echo
echo "Generating closure data for the month of ..."
echo

for month in "${months[@]}"
do
	echo $month
	grep $month $file | cut -d"\"" -f2,10 | sed "s/\"//" >> closing_$month.txt
done

