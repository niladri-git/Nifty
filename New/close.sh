#!/bin/bash

## Header Field (Copy Paste)
## "Date",				"Open","		High","			Low","		  Close","	    Shares Traded","	Turnover (Cr)"

months=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)

months=(Jan)

rm close.txt

echo
echo "Generating closure data"

for month in "${months[@]}"
do
	grep $month NIFTY_01-01-2014-21-12-2014.txt | cut -d"\"" -f2,10 | sed "s/\"//" >> close.txt
done

