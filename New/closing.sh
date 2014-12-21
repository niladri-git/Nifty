#!/bin/bash

## Header Field (Copy Paste)
## "Date",				"Open","		High","			Low","		  Close","	    Shares Traded","	Turnover (Cr)"

months=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)

echo
echo "Removing old data..."
rm closing_*.txt

echo
echo "Generating closure data for the month of ..."
echo

for month in "${months[@]}"
do
	echo $month
	grep $month NIFTY_01-01-2014-21-12-2014.txt | cut -d"\"" -f2,10 | sed "s/\"//" >> closing_$month.txt
done

