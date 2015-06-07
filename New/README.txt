Goto closing.sh

#@ Downloaded the csv file from 
## http://www.nseindia.com/products/content/equities/indices/historical_index_data.htm 
## Open the file in notepad++ and save as NIFTY...txt
## Take care while renaming (Remove CNX from the begining of filename)

## Update the filename in closing.sh
## Replace $prev_cls val in trend.pl
## Replace months value in closing.sh and trend.pl

## Run find_trend.sh 
## sh find_trend.sh > Trend_May_2015.txt