#!/bin/bash

## Header Field (Copy Paste)
## "Date",				"Open","		High","			Low","		  Close","	    Shares Traded","	Turnover (Cr)"

echo
echo "Generating closure data"
tail NIFTY_01-01-2014-21-12-2014.txt | cut -d"\"" -f2,10 | sed "s/\"//" > close.txt

echo
echo "Calculating Difference"
echo NA > diff.txt
tail close.txt | awk '{print $2}' | awk 'NR-1{print $0-p}{p=$0}' >> diff.txt
