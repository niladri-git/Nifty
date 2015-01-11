#!/bin/bash

## Header Field (Copy Paste)
## "Date",				"Open","		High","			Low","		  Close","	    Shares Traded","	Turnover (Cr)"

file=NIFTY_01-01-2014-21-12-2014.txt

#@ Current txt file generated from csv downloaded from 
## http://www.nseindia.com/products/content/equities/indices/historical_index_data.htm 
## Save the file as csv
## Open the file in notepad++
## Replace the header field and save the file as NIFTY_.txt
## Replace $prev_cls val in trend.pl
## Run find_trend.sh 

file=NIFTY_22-12-2014-26-12-2014.txt
file=NIFTY_27-12-2014-31-12-2014.txt
file=NIFTY_01-01-2015-11-01-2015.txt

months=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)

## Current month
months=(Jan)

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

